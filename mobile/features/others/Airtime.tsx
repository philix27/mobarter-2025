import { Wrapper, BtmSheet } from '@/components/layout'
import { z } from 'zod'
import { useRef, useState } from 'react'
import { InputSelect, InputButton, InputText } from '@/components/forms'
import { useAppForm, client, AppStores } from '@/lib'
import { usePrice } from '@/hooks/usePrice'
import { isDev } from '@/lib/constants/env'
import { TText, TView } from '@/components/ui'
import { useTransferToken } from '@/lib/zustand/web3/hooks'
import { RBSheetRef } from 'react-native-raw-bottom-sheet'
import { PayableTokenCard, } from '../tokens'
const formSchema = z.object({
  amount: z.string().min(1),
  operator: z.string(),
  phone: z.string().min(10, 'At least 10 numbers').max(12),
})

export default function AirtimeComp() {
  const { transferERC20 } = useTransferToken()
  const [tokenErr, setTokenErr] = useState<string>()
  const countryStore = AppStores.useCountries()
  const tokenStore = AppStores.useTokens()
  const confirmModal = useRef<RBSheetRef>(null)
  const { handleOnChange: handlePriceChange, amountToPay } = usePrice()

  const getCallCode = () => {
    if (!countryStore.countries || countryStore.countries.length === 0) return '234'
    return countryStore.countries.filter((val) => val.isoName === countryStore.activeIso)[0]
      .callingCodes
  }
  const getCurrencySymbol = () => {
    if (!countryStore.countries || countryStore.countries.length === 0) return 'NGN'
    return countryStore.countries.filter((val) => val.isoName === countryStore.activeIso)[0]
      .currencySymbol
  }

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
    <Wrapper style={{ rowGap: 10 }}>
      <InputSelect
        label="Network"
        placeholder="Select operator"
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

      <InputText
        label={'Phone'}
        leadingText={getCallCode()}
        value={formData.phone}
        onChangeText={(text) => {
          if (text.length > 10) return
          handleChange('phone', text)
          clearErr()
        }}
        placeholder={'Enter phone'}
        // error={errors && errors?.phone && errors!.phone}
        keyboardType="number-pad"
      />

      <InputText
        label={'Amount'}
        keyboardType="numeric"
        leadingText={getCurrencySymbol()}
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
      <PayableTokenCard tokenErr={tokenErr}  />
      <TText>{amountToPay}</TText>
      <InputButton title={'Submit'} style={{ width: '50%' }} onPress={handleSubmit} />

      <BtmSheet.Modal
        ref={confirmModal!}
        style={{
          alignItems: 'center',
          flexDirection: 'column',
          paddingBottom: 80,
          width: '100%',
          rowGap: 1,
        }}
      >
        <TText type="subtitle">
          {`${amountToPay} ${tokenStore.activeToken?.symbol}`}
          {/* {`${formatCurrency(parseFloat(amountToPay!.toString()))} ${countryStore.activeTokenSymbol}`} */}
        </TText>
        <TView style={{ height: 15 }} />
        <BtmSheet.Row text1="Operator" text2={formData.operator} />
        <BtmSheet.Row text1="Phone" text2={formData.phone} />
        <BtmSheet.Row text1="Amount" text2={formData.amount.toString()} />
        <BtmSheet.Row text1="Fee" text2={formData.amount.toString()} />
        <TView style={{ height: 25 }} />
        <InputButton title={'Pay'} onPress={onPay} />
      </BtmSheet.Modal>
    </Wrapper>
  )
}
