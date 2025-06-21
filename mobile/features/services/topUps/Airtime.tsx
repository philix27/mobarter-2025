import { BtmSheet } from '@/components/layout'
import { z } from 'zod'
import { InputButton, InputText } from '@/components/forms'
import { useAppForm, AppStores } from '@/lib'
import { usePrice } from '@/hooks/usePrice'
import { isDev } from '@/lib/constants/env'
import { toast, TText, TView } from '@/components/ui'

import { useTopUps } from './zustand'
import { useResponse } from '@/lib/providers'
import { Api, Country } from '@/graphql'
import AppHooks from '@/hooks'

const formSchema = z.object({
  amount: z.string().min(1),
})

export default function Airtime() {
  const confirmModal = BtmSheet.useRef()
  const { transferERC20 } = AppHooks.useTransferToken()
  const [mutate] = Api.usePurchaseAirtime()
  const tokenStore = AppStores.useTokens()
  const store = useTopUps()

  const country = AppStores.useCountries().activeCountry

  const { formData, errors, handleChange, setErrors } = useAppForm<typeof formSchema._type>({
    amount: '0',
  })

  const amountToPay = AppHooks.usePrice(store.airtime_amount)?.amountToPay
  const response = useResponse()
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

    if (!tokenStore.activeToken) {
      toast.error('Please select a token')
      return
    }

    if (!store.operatorName || store.airtime_operatorId === 0) {
      toast.error('Please select an operator')
      return
    }

    if (store.phone.length !== 10) {
      toast.error('Please enter a valid phone number')
      return
    }

    if (amountToPay === 0 || parseFloat(store.airtime_amount) <= 0) {
      toast.error('Cannot pay 0')
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

  const onPay = async () => {
    response.showLoading(true)
    confirmModal.current.close()
    transferERC20({
      recipient: '',
      amount: amountToPay!.toString(),
      token: tokenStore.activeToken?.address!,
    })
      .then(async (hash: string) => {
        await mutate({
          variables: {
            input: {
              amount: parseFloat(formData.amount),
              countryCode: country?.isoName as Country,
              operatorId: store.airtime_operatorId,
              phoneNo: store.phone,
              transaction_hash: hash,
              // todo: use transaction hash
              // transaction_hash: Date.now().toString(),
            },
          },
        })
          .then(() => {
            response.showSuccess('Transaction Successful')
          })
          .catch((e) => {
            response.showError('Transaction Failed')
            console.log('Error: ', e)
          })
      })
      .catch(() => {
        response.showError('Transaction Failed')
      })
  }
  return (
    <>
      <InputText
        label={'Amount'}
        keyboardType="numeric"
        leadingText={country?.currencySymbol}
        placeholder={'Enter amount'}
        value={store.airtime_amount}
        onChangeText={(text) => {
          if (text.length > 10) return
          store.update({ airtime_amount: text })
          handleChange('amount', text)
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
