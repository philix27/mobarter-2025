import { Wrapper, BtmSheet } from '@/components/layout'
import { z } from 'zod'
import { useState } from 'react'
import { InputSelect, InputButton, InputText } from '@/components/forms'
import { useAppForm, AppStores } from '@/lib'
import { usePrice } from '@/hooks/usePrice'
import { isDev } from '@/lib/constants/env'
import { TText, TView } from '@/components/ui'
import { useTransferToken } from '@/lib/zustand/web3/hooks'
import { PayableTokenCard } from '@/features/tokens'
import { useTopUps } from './zustand'
import { TopUpTabs } from './tab'
import Airtime from './Airtime'
import DataBundlesComp from './DataBundles'
import DataPlanComp from './DataPlans'

const formSchema = z.object({
  amount: z.string().min(1),
  operator: z.string(),
  phone: z.string().min(10, 'At least 10 numbers').max(12),
})

export default function TopUpComp() {
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
        leadingText={country?.callingCodes}
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
      <PayableTokenCard tokenErr={tokenErr} />
      <TView style={{ height: 10 }} />
      <TopUpTabs />
      {store.activeTab === 'AIRTIME' && <Airtime />}
      {store.activeTab === 'BUNDLE' && <DataBundlesComp />}
      {store.activeTab === 'DATA_PLAN' && <DataPlanComp />}
    </Wrapper>
  )
}
