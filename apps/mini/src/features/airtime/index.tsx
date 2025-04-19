import { useMutation, useQuery } from '@apollo/client'
import {
  AirtimeCountryCode,
  Country,
  Currencies,
  FxRate_GetAllDocument,
  MutationResponse,
  MutationUtility_PurchaseAirtimeArgs,
  Operator,
  QueryResponse,
  Utility_PurchaseAirtimeDocument,
} from '@repo/api'
import { useState } from 'react'
import { FaCopy } from 'react-icons/fa6'
import { toast } from 'sonner'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import { AppSelect } from 'src/components/Select'
import { Card, Label } from 'src/components/comps'
import { useSendToken } from 'src/hooks/useSend'
import { TokenId } from 'src/lib/config/tokens'
import { pasteTextFromClipboard } from 'src/lib/utils'
import { logger } from 'src/lib/utils/logger'

export default function Airtime() {
  const [amtValue, setAmountVal] = useState<number>()
  const [phoneNo, setPhoneNo] = useState<string>('')
  const Copy = FaCopy as any

  const { sendCusd } = useSendToken()
  const { cusdAmt, handleOnChange } = useGetPrice()

  const [mutate] = useMutation<
    MutationResponse<'utility_purchaseAirtime'>,
    MutationUtility_PurchaseAirtimeArgs
  >(Utility_PurchaseAirtimeDocument)

  const handleSend = () => {
    if (amtValue == undefined || amtValue < 50) {
      toast.error('Minimum of NGN1,000')
      return
    }
    void sendCusd({
      recipient: '0x20F50b8832f87104853df3FdDA47Dd464f885a49',
      amount: cusdAmt.toString(),
      token: TokenId.cUSD,
    })
      .then((txHash) => {
        void mutate({
          variables: {
            input: {
              amount: amtValue,
              countryCode: AirtimeCountryCode.Nigeria,
              currency: Currencies.Ngn,
              operator: Operator.Mtn,
              transaction_hash: txHash || `${Date.now()}`,
              phoneNo,
            },
          },
          onCompleted() {
            toast.success('Sent successfully')
            setPhoneNo('')
            setAmountVal(0)
          },
          onError(err) {
            logger.error('TOken err: ' + err)
          },
        })
      })
      .catch((err) => {
        toast.error('Error sending cUSD:', err.message)
      })
  }
  return (
    <div className="w-full items-center justify-center flex flex-col px-1 mb-[20vh]">
      {/* <Label>Purchase Airtime</Label> */}
      <AppSelect
        label="Country"
        onChange={(data) => {
          logger.info('Change: ' + data)
        }}
        data={[
          { label: 'Nigeria', value: Country.Nigeria },
          { label: 'Ghana', value: Country.Ghana },
          { label: 'Kenya', value: Country.Kenya },
        ]}
      />
      <AppSelect
        label="Network"
        onChange={(data) => {
          logger.info('Change: ' + data)
        }}
        data={[
          { label: 'MTN', value: Country.Nigeria },
          { label: 'AIRTEL', value: Country.Ghana },
          { label: 'GLO', value: Country.Kenya },
        ]}
      />
      <Input
        label="Phone number"
        placeholder="2348101234567"
        value={phoneNo}
        type="number"
        pattern="[0-9]*"
        inputMode="decimal"
        min={0}
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

      <Input
        label="Amount"
        placeholder="Amount to send"
        type="number"
        pattern="[0-9]*"
        inputMode="decimal"
        step=".01"
        min={0}
        value={amtValue}
        onChange={(e) => {
          const num = parseFloat(e.target.value)
          if (isNaN(num)) {
            return
          }
          // if (parseInt(e.target.value) < 0) {
          //   return
          // }
          setAmountVal(num)
          handleOnChange(num)
        }}
      />
      <div className="w-full mt-3">
        <Label>You Pay:</Label>
        <Card className="bg-background">{cusdAmt}</Card>
      </div>
      <Button className="mt-5 w-[70%]" onClick={handleSend}>
        Send
      </Button>
    </div>
  )
}

export function useGetPrice() {
  const [cusdAmt, setCusdAmt] = useState(0)
  const { data: fxData } = useQuery<QueryResponse<'fxRate_GetAll'>>(FxRate_GetAllDocument)

  if (!fxData)
    return {
      cusdAmt: 0,
      handleOnChange: () => {
        return
      },
    }
  const rate = fxData!.fxRate_GetAll.NGN

  const handleOnChange = (airtimeAmount: number) => {
    const c = airtimeAmount / rate

    setCusdAmt(c)
  }

  return { cusdAmt, handleOnChange }
}
