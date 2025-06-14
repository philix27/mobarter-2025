import { BtmSheet } from '@/components/layout'
import { z } from 'zod'
import { useState } from 'react'
import { InputButton, InputSelect, InputText } from '@/components/forms'
import { useAppForm, AppStores } from '@/lib'
import { usePrice } from '@/hooks/usePrice'
import { isDev } from '@/lib/constants/env'
import { TText, TView } from '@/components/ui'
import { useTransferToken } from '@/lib/zustand/web3/hooks'
import { useTopUps } from './zustand'

const formSchema = z.object({
  amount: z.string().min(1),
  operator: z.string(),
  phone: z.string().min(10, 'At least 10 numbers').max(12),
})

export default function DataPlanComp() {
  const confirmModal = BtmSheet.useRef()
  const { transferERC20 } = useTransferToken()
  const [tokenErr, setTokenErr] = useState<string>()
  const tokenStore = AppStores.useTokens()
  const store = useTopUps()
  const { handleOnChange: handlePriceChange, amountToPay } = usePrice()
  const countryStore = AppStores.useCountries()
  const country = countryStore.activeCountry

  const { formData, errors, handleChange, setErrors } = useAppForm<typeof formSchema._type>({
    // Omit<typeof formSchema._type, 'amount'> & { amount: string }
    amount: '0',
    operator: '',
    phone: '',
  })

  const clearErr = () => {
    setErrors('amount', '')
    setErrors('operator', '')
    setErrors('phone', '')
  }

  const showErr = () => {
    const validation = formSchema.safeParse(formData)
    if (validation.success) {
      return
    }
    // clearErr(validation.error);
    const errorMessages = validation.error.format()
    setErrors('amount', errorMessages.amount?._errors[0] || '')
    setErrors('operator', errorMessages.operator?._errors[0] || '')
    setErrors('phone', errorMessages.phone?._errors[0] || '')
  }

  const handleSubmit = () => {
    const validation = formSchema.safeParse(formData)

    if (!validation.success) {
      showErr()
      console.log('Error in validation ' + validation.error.message)
      return
    }

    const leastAmount = isDev ? 50 : 50

    // const amt = parseFloat(formData.amount.toString())
    // if (amt == undefined || amt < leastAmount) {
    //   console.log('Error in amount value')
    //   setErrors('amount', `amount must be above ${leastAmount}`)
    //   return
    // }

    confirmModal.current.open()
  }

  const onPay = () => {
    transferERC20({
      recipient: '',
      amount: amountToPay!.toString(),
      token: '',
    })
  }
  return (
    <>
      <InputSelect
        label="Select Plan"
        placeholder="None"
        error={errors && errors?.operator && errors!.operator}
        onValueChange={(v) => {
          handleChange('operator', v)
          clearErr()
        }}
        items={[
          {
            label: 'MTN',
            value: 'MTN',
          },
          {
            label: 'Airtel',
            value: 'Airtel',
          },
          {
            label: 'GLO',
            value: 'GLO',
          },
        ]}
      />
      <TText>{amountToPay}</TText>
      <InputButton title={'Submit'} onPress={handleSubmit} />

      <BtmSheet.Modal title="Confirm" ref={confirmModal!}>
        <BtmSheet.Row text1="Operator" text2={formData.operator} />
        <BtmSheet.Row text1="Phone" text2={`${country?.callingCodes}${formData.phone}`} />
        <BtmSheet.Row
          text1="Amount"
          text2={`${country?.currencySymbol}${formData.amount.toString()}`}
        />
        <BtmSheet.Row text1="You pay" text2={`${amountToPay} ${tokenStore.activeToken?.symbol}`} />
        <TView style={{ height: 25 }} />
        <InputButton title={'Pay'} onPress={onPay} />
      </BtmSheet.Modal>
    </>
  )
}
