import { Wrapper } from '@/components/layout'
import { z } from 'zod'
import { useState } from 'react'
import { InputText } from '@/components/forms'
import { useAppForm, AppStores } from '@/lib'
import { TView } from '@/components/ui'
import { PayableTokenCard } from '@/features/tokens'
import { useTopUps } from './zustand'
import { TopUpTabs } from './tab'
import Airtime from './Airtime'
import DataBundlesComp from './DataBundles'
import { SelectOperator } from './SelectOperator'

const formSchema = z.object({
  amount: z.string().min(1),
  operator: z.string(),
  phone: z.string().min(10, 'At least 10 numbers').max(12),
})

export default function TopUpComp() {
  const [tokenErr, setTokenErr] = useState<string>()
  const store = useTopUps()
  const countryStore = AppStores.useCountries()
  const country = countryStore.activeCountry
  const { formData, errors, handleChange, setErrors } = useAppForm<typeof formSchema._type>({
    amount: '0',
    operator: '',
    phone: '',
  })

  const clearErr = () => {
    setErrors('amount', '')
    setErrors('operator', '')
    setErrors('phone', '')
  }

  return (
    <Wrapper style={{ rowGap: 10 }}>
      <SelectOperator
        error={errors && errors?.operator && errors!.operator}
        onValueChange={(v) => {
          handleChange('operator', v)
          clearErr()
        }}
      />
      <InputText
        label={'Phone'}
        leadingText={country?.callingCodes}
        value={store.phone}
        onChangeText={(text) => {
          store.update({ phone: text })
        }}
        placeholder={'Enter phone'}
        // error={errors && errors?.phone && errors!.phone}
        keyboardType="number-pad"
      />
      <PayableTokenCard tokenErr={tokenErr} />
      <TView style={{ height: 10 }} />
      <TopUpTabs />
      {store.activeTab === 'AIRTIME' && <Airtime />}
      {store.activeTab === 'BUNDLE' && <DataBundlesComp isDataBundle />}
      {store.activeTab === 'DATA_PLAN' && <DataBundlesComp />}
    </Wrapper>
  )
}

