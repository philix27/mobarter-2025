import { TView, Wrapper } from '@/components'
import { HeaderTabs } from '@/components/BHeaderTab'
import { TText } from '@/components/ui'
import variables from '@/lib/constants/variables'
import React from 'react'
import { useSavings } from '../zustand'
import ViewComp from './View'
import Create from './Create'

export default function FixedDepositPage() {
  const store = useSavings()
  return (
    <TView style={{ alignItems: 'center' }}>
      <HeaderTabs
        style={{ width: variables.width / 1.5 }}
        data={[
          {
            title: 'Create',
            key: 'create',
            onPress: () => {
              store.update({ fixedDepositTab: 'CREATE' })
            },
            isActive: store.fixedDepositTab === 'CREATE',
          },
          {
            title: 'View',
            key: 'view',
            onPress: () => {
              store.update({ fixedDepositTab: 'VIEW' })
            },
            isActive: store.fixedDepositTab === 'VIEW',
          },
        ]}
      />
      <Wrapper>{store.fixedDepositTab === 'VIEW' ? <ViewComp /> : <Create />}</Wrapper>
    </TView>
  )
}
