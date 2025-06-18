import { Wrapper, BtmSheet } from '@/components/layout'
import { z } from 'zod'
import { InputSelect, InputButton, InputText, Label } from '@/components/forms'
import { useAppForm, AppStores } from '@/lib'
import { isDev } from '@/lib/constants/env'
import { toast, TView } from '@/components/ui'

import { PayableTokenCard } from '@/features/tokens'
import AppHooks from '@/hooks'
import { Api } from '@/graphql'

const formSchema = z.object({
  amount: z.string().min(1),
  operator: z.string(),
  isPrepaid: z.boolean(),
  accountNo: z.string().min(10, 'At least 10 numbers').max(12),
})

export default function ElectricityBillScreen() {
  const confirmModal = BtmSheet.useRef()
  const { transferERC20 } = AppHooks.useTransferToken()

  const tokenStore = AppStores.useTokens()

  const countryStore = AppStores.useCountries()
  const country = countryStore.activeCountry
  const { data, loading } = Api.useElectricityBillProviders({
    input: { countryCode: country!.isoName },
  })
  const { formData, errors, handleChange, setErrors, setFormData } = useAppForm<
    typeof formSchema._type
  >({
    // Omit<typeof formSchema._type, 'amount'> & { amount: string }
    amount: '0',
    operator: '',
    accountNo: '',
    isPrepaid: true,
  })
  // const { amountToPay } = AppHooks.usePrice(parseFloat(formData.amount.toString()))

  const clearErr = () => {
    setErrors('amount', '')
    setErrors('operator', '')
    setErrors('accountNo', '')
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
    setErrors('accountNo', errorMessages.accountNo?._errors[0] || '')
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
      amount: '',
      // amountToPay!.toString(),
      token: tokenStore.activeToken?.address!,
    })
  }

  return (
    <Wrapper style={{ rowGap: 15 }}>
      {data && (
        <InputSelect
          label="Providers"
          placeholder="Provider"
          error={errors && errors?.operator && errors!.operator}
          onValueChange={(v) => {
            handleChange('operator', v)
            clearErr()
          }}
          items={data?.electricityBill_getProviders.map((val) => {
            return {
              label: val.name,
              value: val.name,
              icon: val.logo,
            }
          })}
        />
      )}

      <TView
        style={{
          flexDirection: 'row',
          justifyContent: 'space-evenly',
          width: '100%',
          margin: 0,
          padding: 0,
        }}
      >
        <InputButton
          title="Prepaid"
          variant={formData.isPrepaid ? 'primary' : 'secondary'}
          style={{ width: '50%', borderRadius: 0 }}
          onPress={() => {
            setFormData({ ...formData, isPrepaid: true })
          }}
        />

        <InputButton
          title="Postpaid"
          variant={!formData.isPrepaid ? 'primary' : 'secondary'}
          style={{ width: '50%', borderRadius: 0 }}
          onPress={() => {
            setFormData({ ...formData, isPrepaid: false })
          }}
        />
      </TView>

      <InputText
        label={'Meter/Account Number'}
        value={formData.accountNo}
        onChangeText={(text) => {
          if (text.length > 10) return
          handleChange('accountNo', text)
          clearErr()
        }}
        placeholder={'Enter accountNo'}
        error={errors && errors?.accountNo && errors!.accountNo}
        keyboardType="number-pad"
      />

      <InputText
        label={'Amount'}
        keyboardType="numeric"
        leadingText={country?.currencySymbol}
        placeholder={'Enter amount'}
        value={formData.amount.toString()}
        onChangeText={(text) => {
          if (text.length > 10) return
          handleChange('amount', text)

          clearErr()
        }}
        error={errors && errors?.amount && errors!.amount}
      />
      <PayableTokenCard />
      {/* <TText>{tokenStore.activeToken?.symbol} {amountToPay}</TText> */}
      <InputButton title={'Submit'} style={{ width: '50%' }} onPress={handleSubmit} />

      <BtmSheet.Modal
        ref={confirmModal!}
        title="Confirm"
        style={{
          alignItems: 'center',
          flexDirection: 'column',
          paddingBottom: 80,
          width: '100%',
          rowGap: 1,
        }}
      >
        <BtmSheet.Row text1="Operator" text2={formData.operator} />
        <BtmSheet.Row text1="accountNo" text2={formData.accountNo} />
        <BtmSheet.Row text1="Amount" text2={formData.amount.toString()} />
        <BtmSheet.Row text1="Fee" text2={formData.amount.toString()} />
        <TView style={{ height: 25 }} />
        <InputButton title={'Pay'} onPress={onPay} />
      </BtmSheet.Modal>
    </Wrapper>
  )
}
