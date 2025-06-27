import { Wrapper, BtmSheet } from '@/components/layout'
import { z } from 'zod'
import { InputSelect, InputButton, InputText, Label } from '@/components/forms'
import { useAppForm, AppStores, formatCurrency } from '@/lib'
import { isDev } from '@/lib/constants/env'
import { LoadingIndicator, toast, TText, TView } from '@/components/ui'

import { PayableTokenCard } from '@/features/tokens'
import AppHooks from '@/hooks'
import { Api } from '@/graphql'
import { useState } from 'react'

const formSchema = z.object({
  amount: z.string().min(1),
  provider: z.string(),
  packageCode: z.string(),
  smartCardNo: z.string(),
  isPrepaid: z.boolean(),
  accountNo: z.string().min(10, 'At least 10 numbers').max(12),
})

export default function CableTvScreen() {
  const confirmModal = BtmSheet.useRef()
  const { transferERC20 } = AppHooks.useTransferToken()
  const recipient = Api.useStatic_Collectors('TV_Bills')
  const tokenStore = AppStores.useTokens()
  const [service, setService] = useState<string>()
  const countryStore = AppStores.useCountries()
  const country = countryStore.activeCountry
  const { data, loading } = Api.useTV_GetProviders({
    input: { countryCode: country!.isoName },
  })

  const { data: bouquetData, loading: bouquetLoading } = Api.useTV_GetBouquet({
    input: { countryCode: country!.isoName, service: service || '' },
  })
  const { formData, errors, handleChange, setErrors, setFormData } = useAppForm<
    typeof formSchema._type
  >({
    // Omit<typeof formSchema._type, 'amount'> & { amount: string }
    amount: '0',
    provider: '',
    accountNo: '',
    isPrepaid: true,
    packageCode: '',
    smartCardNo: '',
  })
  // const { amountToPay } = AppHooks.usePrice(parseFloat(formData.amount.toString()))

  const clearErr = () => {
    setErrors('provider', '')
    setErrors('accountNo', '')
    setErrors('packageCode', '')
  }

  const showErr = () => {
    const validation = formSchema.safeParse(formData)
    if (validation.success) {
      return
    }
    // clearErr(validation.error);
    const errorMessages = validation.error.format()
    setErrors('amount', errorMessages.amount?._errors[0] || '')
    setErrors('provider', errorMessages.provider?._errors[0] || '')
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
      recipient,
      amount: '',
      // amountToPay!.toString(),
      token: tokenStore.activeToken?.address!,
    })
  }

  if (loading) {
    return (
      <Wrapper style={{ rowGap: 15 }}>
        <LoadingIndicator />
      </Wrapper>
    )
  }

  return (
    <Wrapper style={{ rowGap: 15 }}>
      {data && (
        <InputSelect
          label="Providers"
          placeholder="Provider"
          error={errors && errors?.provider && errors!.provider}
          onValueChange={(v) => {
            handleChange('provider', v)
            setService(v)
            clearErr()
          }}
          items={data?.tvBills_getProviders.map((val) => {
            return {
              label: val.name,
              value: val.name,
              icon: val.logo,
            }
          })}
        />
      )}

      {bouquetData && (
        <InputSelect
          label="Bouquet"
          placeholder="Select Bouquet"
          error={errors && errors?.provider && errors!.provider}
          onValueChange={(v) => {
            handleChange('packageCode', v)
            clearErr()
          }}
          items={bouquetData?.tvBills_getBouquet.map((val) => {
            return {
              label: `₦${formatCurrency(parseInt(val.price))} - ${val.description}`,
              value: val.code,
              desc: `₦${val.price}`,
            }
          })}
        />
      )}

      <InputText
        label={'Smart Card Number'}
        value={formData.accountNo}
        onChangeText={(text) => {
          if (text.length > 10) return
          handleChange('smartCardNo', text)
          clearErr()
        }}
        placeholder={'Enter Smart Card No'}
        error={errors && errors?.accountNo && errors!.accountNo}
        keyboardType="number-pad"
      />

      <InputText
        label={'Customer Name'}
        value={formData.accountNo}
        onChangeText={(text) => {
          if (text.length > 10) return
          handleChange('accountNo', text)
          clearErr()
        }}
        placeholder={'Enter accountNo'}
        error={errors && errors?.accountNo && errors!.accountNo}
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
        <BtmSheet.Row text1="provider" text2={formData.provider} />
        <BtmSheet.Row text1="accountNo" text2={formData.accountNo} />
        <BtmSheet.Row text1="Amount" text2={formData.amount.toString()} />
        <BtmSheet.Row text1="Fee" text2={formData.amount.toString()} />
        <TView style={{ height: 25 }} />
        <InputButton title={'Pay'} onPress={onPay} />
      </BtmSheet.Modal>
    </Wrapper>
  )
}
