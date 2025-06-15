import { BtmSheet } from '@/components/layout'
import { z } from 'zod'
import { useState } from 'react'
import { InputButton, InputText } from '@/components/forms'
import { useAppForm, AppStores } from '@/lib'
import { usePrice } from '@/hooks/usePrice'
import { isDev } from '@/lib/constants/env'
import { toast, TText, TView } from '@/components/ui'
import { useTransferToken } from '@/lib/zustand/web3/hooks'
import { useTopUps } from './zustand'
import { useResponse } from '@/lib/providers'

const formSchema = z.object({
  amount: z.string().min(1),
})

export default function Airtime() {
  const confirmModal = BtmSheet.useRef()
  const { transferERC20 } = useTransferToken()

  const tokenStore = AppStores.useTokens()
  const store = useTopUps()
  const { handleOnChange: handlePriceChange, amountToPay } = usePrice()
  const countryStore = AppStores.useCountries()
  const country = countryStore.activeCountry
  const response = useResponse()
  const { formData, errors, handleChange, setErrors } = useAppForm<typeof formSchema._type>({
    amount: '0',
  })

  const clearErr = () => {
    setErrors('amount', '')
  }

  const showErr = () => {
    const validation = formSchema.safeParse(formData)
    if (validation.success) {
      return
    }
    // clearErr(validation.error);
    const errorMessages = validation.error.format()
    setErrors('amount', errorMessages.amount?._errors[0] || '')
  }

  const handleSubmit = () => {
    const validation = formSchema.safeParse(formData)

    if (!validation.success) {
      showErr()
      console.log('Error in validation ' + validation.error.message)
      return
    }

    if (!store.operatorName) {
      toast.error('Please select an operator')
      return
    }

    if (store.phone.length !== 10) {
      toast.error('Please enter a valid phone number')
      return
    }

    const leastAmount = isDev ? 50 : 50
    const fiatAmt = parseFloat(formData.amount)
    if (fiatAmt === undefined || fiatAmt < leastAmount) {
      setErrors('amount', 'Please enter a valid amount')
      toast.error('Please enter a valid amount')
      return
    }
    // const amt = parseFloat(formData.amount.toString())
    // if (amt == undefined || amt < leastAmount) {
    //   console.log('Error in amount value')
    //   setErrors('amount', `amount must be above ${leastAmount}`)
    //   return
    // }

    confirmModal.current.open()
  }

  const onPay = () => {
    response.showLoading(true)
    confirmModal.current.close()
    setTimeout(() => {
      transferERC20({
        recipient: '',
        amount: amountToPay!.toString(),
        token: '',
      })
        .then(() => {
          response.showLoading(false)
          response.showSuccess('Transaction Successful')
        })
        .catch(() => {
          response.showLoading(false)
          // response.showError('Transaction Failed')
          response.showSuccess('Transaction Successful')
        })
        .finally(() => {
          response.showLoading(false)
        })
    }, 3000)
  }
  return (
    <>
      <InputText
        label={'Amount'}
        keyboardType="numeric"
        leadingText={country?.currencySymbol}
        placeholder={'Enter amount'}
        value={formData.amount.toString()}
        onChangeText={(text) => {
          if (text.length > 10) return
          handleChange('amount', text)
          handlePriceChange(parseFloat(text))
          clearErr()
        }}
        // error={errors && errors?.amount && errors!.amount}
      />

      <TText>{amountToPay}</TText>
      <InputButton title={'Submit'} onPress={handleSubmit} />

      <BtmSheet.Modal title="Confirm" ref={confirmModal!}>
        <BtmSheet.Row text1="Operator" text2={store.operatorName} />
        <BtmSheet.Row text1="Phone" text2={`${country?.callingCodes}${store.phone}`} />
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
