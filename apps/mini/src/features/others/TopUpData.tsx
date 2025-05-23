import { useMutation } from '@apollo/client'
import {
  MutationResponse,
  MutationUtility_PurchaseDataBundleArgs,
  Utility_PurchaseDataBundleDocument,
} from '@repo/api'
import { useQuery } from '@tanstack/react-query'
import { useState } from 'react'
import { FaCopy } from 'react-icons/fa6'
import { toast } from 'sonner'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import { AppSelect } from 'src/components/Select'
import { Card, Label } from 'src/components/comps'
import { useSendToken } from 'src/hooks/useSend'
import { TokenId } from 'src/lib/config/tokens'
import { cn, pasteTextFromClipboard } from 'src/lib/utils'
import { AppStores } from 'src/lib/zustand'

import BalCard from './BalCard'
import BottomModal from '@/src/components/BottomModal'
import { TileSimple } from '@/src/components/TileSimple'
import { usePrice } from '@/src/hooks/usePrice'
import { mapCountryToData, mapCountryToIso } from '@/src/lib'
import { COLLECTOR } from '@/src/lib/config'
import { getBundlesOperator, getDataOperator } from '@/src/lib/server'

export default function TopUpData(props: { isData?: boolean }) {
  return <TgTopUp {...props} />
}

export function TgTopUp(props: { isData?: boolean }) {
  const { sendErc20 } = useSendToken()
  return <TopUpDataComps sendErc20={sendErc20} isData={props.isData} />
}

export function TopUpDataComps({
  sendErc20,
  ...props
}: {
  isData?: boolean
  sendErc20: (props: { recipient: string; amount: string; token: TokenId }) => Promise<string>
}) {
  const [phoneNo, setPhoneNo] = useState<string>('')
  const [showBtm, setShowBtmSheet] = useState<boolean>(false)
  const [operatorId, setOperatorId] = useState('')
  const [operatorPlan, setOperatorPlan] = useState<{ amount: string; desc: string }>()

  const Copy = FaCopy as any
  const store = AppStores.useSettings()
  const countryCode = mapCountryToData[store.countryIso].callingCodes[0]
  // const { sendErc20 } = useSendToken()
  const { amountToPay, handleOnChange } = usePrice()

  const { data } = useQuery({
    queryKey: [`getDataOperator-${props.isData ? 'isData' : 'isBundle'}`],
    queryFn: async () => {
      let res
      if (props.isData) {
        res = await getDataOperator(store.countryIso)
      } else {
        res = await getBundlesOperator(store.countryIso)
      }
      return res
    },
  })

  const plansList = () => {
    if (!data) return undefined

    const op = data.filter((v) => `${v.id}` === operatorId)[0]

    if (!op) return undefined

    const amountDesc = Object.keys(op.fixedAmountsDescriptions).map((key) => {
      return {
        label: op.fixedAmountsDescriptions[key],
        amount: key,
        symbol: op.destinationCurrencySymbol,
      }
    })

    return amountDesc
  }
  const [mutate] = useMutation<
    MutationResponse<'utility_purchaseDataBundle'>,
    MutationUtility_PurchaseDataBundleArgs
  >(Utility_PurchaseDataBundleDocument)

  const handleSend = async () => {
    if (operatorPlan === undefined) {
      toast.error('Select an operator')
      return
    }

    const amtValue = parseInt(operatorPlan.amount)

    if (amtValue < 0) {
      toast.error('Amount must be above zero')
      return
    }

    await sendErc20({
      recipient: COLLECTOR,
      amount: amountToPay!.toString(),
      token: TokenId.cUSD,
    })
      .then((txHash) => {
        void mutate({
          variables: {
            input: {
              amount: parseInt(operatorPlan.amount),
              countryCode: mapCountryToIso[store.countryIso],
              operator: parseInt(operatorId),
              transaction_hash: txHash || `${Date.now()}`,
              phoneNo: `${countryCode.slice(1)}${phoneNo}`,
            },
          },
          onCompleted() {
            toast.success('Sent successfully')
            setPhoneNo('')
            setOperatorPlan({ amount: '', desc: '' })
          },
        })
      })
      .catch((err) => {
        toast.error('Error sending cUSD:', err.message)
      })
  }

  return (
    <>
      <div className="w-full items-center justify-center flex flex-col gap-y-4 px-1">
        <BalCard />
        <Input
          label={`Phone NO. (${mapCountryToIso[store.countryIso]})*`}
          placeholder={`8101234567`}
          preText={countryCode}
          value={phoneNo}
          type="number"
          onChange={(e) => {
            const num = e.target.value
            if (num.length > 13) {
              toast.error('11 characters max')
              return
            }
            setPhoneNo(num.toString())
          }}
          trailingIcon={
            <Copy
              className="text-muted"
              onClick={async () => {
                const text = await pasteTextFromClipboard()
                setPhoneNo(text)
              }}
            />
          }
        />
        {data && (
          <AppSelect
            label="Network*"
            onChange={(id) => {
              setOperatorId(id)
              if (operatorId !== id) {
                setOperatorPlan({ amount: '', desc: '' })
              }
            }}
            data={data.map((val) => {
              return {
                label: val.name,
                value: `${val.id}`,
              }
            })}
          />
        )}

        <div className="w-full ">
          <Label>Selected Plan*</Label>
          {operatorPlan && operatorPlan.desc ? (
            <Card
              className="text-foreground"
              onClick={() => {
                setShowBtmSheet(true)
              }}
            >{` ${mapCountryToData[store.countryIso].currencySymbol} ${operatorPlan!.amount} - ${
              operatorPlan!.desc
            }`}</Card>
          ) : (
            <Card
              onClick={() => {
                setShowBtmSheet(true)
              }}
            >{`Select a plan`}</Card>
          )}
        </div>

        <div className="w-full ">
          <Label>You Pay (cUSD)</Label>
          <Card>{amountToPay} </Card>
        </div>
        <Button className="mt-5 w-[70%]" onClick={handleSend}>
          Confirm
        </Button>
      </div>
      <BottomModal
        showSheet={showBtm}
        onClose={() => {
          setShowBtmSheet(false)
        }}
      >
        <div className="w-full items-center justify-center flex flex-col">
          {plansList() &&
            plansList()!.map((val, i) => {
              const isActive = operatorPlan && operatorPlan.amount === val.amount
              return (
                <TileSimple
                  key={i}
                  title={`${val.symbol} ${val.amount}`}
                  desc={val.label}
                  className={cn(isActive && 'border-primary border')}
                  onClick={() => {
                    // setAmountVal(parseFloat(val.amount))
                    handleOnChange(parseFloat(val.amount))
                    setOperatorPlan({
                      amount: val.amount,
                      desc: val.label,
                    })
                    setShowBtmSheet(false)
                  }}
                />
              )
            })}
        </div>
      </BottomModal>
    </>
  )
}
