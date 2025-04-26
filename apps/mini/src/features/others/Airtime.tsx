import { useMutation } from '@apollo/client'
import {
  AirtimeCountryCode,
  Country,
  Currencies,
  MutationResponse,
  MutationUtility_PurchaseAirtimeArgs,
  Operator,
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
import { AppStores } from 'src/lib/zustand'

import { essentialCountriesList } from './SelectCountry'
import { usePrice } from '@/src/hooks/usePrice'
import { useTokenBalance } from '@/src/hooks/useTokenBal'
import { isDev } from '@/src/lib'
import { COLLECTOR } from '@/src/lib/config'

export default function Airtime() {
  const [amtValue, setAmountVal] = useState<number>()
  const [phoneNo, setPhoneNo] = useState<string>('')
  const Copy = FaCopy as any
  const store = AppStores.useSettings()
  const countryCode = essentialCountriesList.filter((val) => val.isoName === store.countryIso)[0]
    .callingCodes[0]
  const { sendErc20 } = useSendToken()
  const { amountToPay, handleOnChange } = usePrice()
  const tokenBalance = useTokenBalance(TokenId.cUSD)

  const [mutate] = useMutation<
    MutationResponse<'utility_purchaseAirtime'>,
    MutationUtility_PurchaseAirtimeArgs
  >(Utility_PurchaseAirtimeDocument)

  function IsoToCountryCode() {
    switch (store.countryIso) {
      case 'NG':
        return AirtimeCountryCode.Nigeria
      case 'GH':
        return AirtimeCountryCode.Ghana
      case 'KE':
        return AirtimeCountryCode.Kenya

      default:
        return AirtimeCountryCode.Nigeria
    }
  }

  const handleSend = async () => {
    const leastAmount = isDev ? 50 : 50
    if (amtValue == undefined || amtValue < leastAmount) {
      toast.error('Minimum of NGN1,000')
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
              amount: amtValue,
              countryCode: IsoToCountryCode(),
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
        })
      })
      .catch((err) => {
        toast.error('Error sending cUSD:', err.message)
      })
  }
  return (
    <div className="w-full items-center justify-center flex flex-col px-1 mb-[20vh]">
      <div className="w-full">
        <Label>Balance</Label>
        <Card className="text-primary">{tokenBalance}</Card>
      </div>
      <Input
        label={`${IsoToCountryCode()} Phone number`}
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
        label="Amount"
        placeholder="Amount to send"
        type="number"
        step=".01"
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
        <Card className="bg-background">{amountToPay}</Card>
      </div>
      <Button className="mt-5 w-[70%]" onClick={handleSend}>
        Send
      </Button>
    </div>
  )
}
