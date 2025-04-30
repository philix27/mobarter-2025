// import { useMutation } from '@apollo/client'
// import {
//   CurrencyFiat,
//   MutationResponse,
//   MutationUtility_PurchaseAirtimeArgs,
//   Operator,
//   Utility_PurchaseAirtimeDocument,
// } from '@repo/api'
import { useQuery } from '@tanstack/react-query'
import { useState } from 'react'
import { FaCopy } from 'react-icons/fa6'
import { toast } from 'sonner'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import { AppSelect } from 'src/components/Select'
import { Card, Label } from 'src/components/comps'
// import { useSendToken } from 'src/hooks/useSend'
// import { TokenId } from 'src/lib/config/tokens'
import { pasteTextFromClipboard } from 'src/lib/utils'
import { AppStores } from 'src/lib/zustand'

import BalCard from './BalCard'
import BottomModal from '@/src/components/BottomModal'
import { TileSimple } from '@/src/components/TileSimple'
import { usePrice } from '@/src/hooks/usePrice'
import { mapCountryToData, mapCountryToIso } from '@/src/lib'
// import { COLLECTOR } from '@/src/lib/config'
import { getDataOperator } from '@/src/lib/server'

export default function TopUpData() {
  // const [amtValue, setAmountVal] = useState<number>()
  const [phoneNo, setPhoneNo] = useState<string>('')
  const [showBtm, setShowBtmSheet] = useState<boolean>(false)
  // const [selectedOperator, setOperator] = useState<Operator>()
  const [operatorId, setOperatorId] = useState('')
  const [operatorPlan, setOperatorPlan] = useState<{ amount: string; desc: string }>()

  const Copy = FaCopy as any
  const store = AppStores.useSettings()
  const countryCode = mapCountryToData[store.countryIso].callingCodes[0]
  // const { sendErc20 } = useSendToken()
  const { amountToPay, handleOnChange } = usePrice()

  const { data } = useQuery({
    queryKey: ['getDataOperator'],
    queryFn: async () => {
      const res = await getDataOperator(store.countryIso)
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
  // const [mutate] = useMutation<
  //   MutationResponse<'utility_purchaseAirtime'>,
  //   MutationUtility_PurchaseAirtimeArgs
  // >(Utility_PurchaseAirtimeDocument)

  const handleSend = async () => {
    // const leastAmount = isDev ? 50 : 50
    // if (selectedOperator === undefined) {
    //   toast.error('Select an operator')
    //   return
    // }
    // if (amtValue == undefined || amtValue < leastAmount) {
    //   toast.error('Minimum of NGN1,000')
    //   return
    // }
    // await sendErc20({
    //   recipient: COLLECTOR,
    //   amount: amountToPay!.toString(),
    //   token: TokenId.cUSD,
    // })
    //   .then((txHash) => {
    //     void mutate({
    //       variables: {
    //         input: {
    //           amount: amtValue,
    //           countryCode: mapCountryToIso[store.countryIso],
    //           currency: CurrencyFiat.Ngn,
    //           operator: selectedOperator!,
    //           transaction_hash: txHash || `${Date.now()}`,
    //           phoneNo,
    //         },
    //       },
    //       onCompleted() {
    //         toast.success('Sent successfully')
    //         setPhoneNo('')
    //         setAmountVal(0)
    //       },
    //     })
    //   })
    //   .catch((err) => {
    //     toast.error('Error sending cUSD:', err.message)
    //   })
  }
  return (
    <>
      <div className="w-full items-center justify-center flex flex-col gap-y-4 px-1">
        <BalCard />
        <Input
          label={`${mapCountryToIso[store.countryIso]} Phone number`}
          placeholder={`${countryCode}8101234567`}
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
            }}
            data={data.map((val) => {
              return {
                label: val.name,
                value: `${val.id}`,
              }
            })}
          />
        )}

        <div className="w-full mt-3">
          <Label>Selected Plan</Label>
          {operatorPlan!.desc ? (
            <Card
              onClick={() => {
                setShowBtmSheet(true)
              }}
            >{` ${mapCountryToData[store.countryIso].currencySymbol} ${operatorPlan!.amount} - ${
              operatorPlan!.desc
            }`}</Card>
          ) : (
            <Card>{`Select a plan`}</Card>
          )}
        </div>

        <div className="w-full mt-3">
          <Label>You Pay:</Label>
          <Card>{amountToPay}</Card>
        </div>
        <Button className="mt-5 w-[70%]" onClick={handleSend}>
          Send
        </Button>
      </div>
      <BottomModal
        showSheet={plansList() && showBtm}
        onClose={() => {
          setShowBtmSheet(false)
        }}
      >
        <div className="w-full items-center justify-center flex flex-col">
          {plansList()!.map((val, i) => (
            <TileSimple
              key={i}
              title={`${val.symbol} ${val.amount}`}
              desc={val.label}
              onClick={() => {
                // setAmountVal(parseFloat(val.amount))
                handleOnChange(parseFloat(val.amount))
                setOperatorPlan({
                  amount: val.amount,
                  desc: val.label,
                })
              }}
            />
          ))}
        </div>
      </BottomModal>
    </>
  )
}
