import { TView, Wrapper } from '@/components'
import React from 'react'
import { useSavings } from '../zustand'
import ViewComp from './View'
import Create from './Create'
import { FlatTabs } from '@/components/FlatTabs'

export default function FixedDepositPage() {
  const store = useSavings()
  return (
    <TView style={{ alignItems: 'center', width: '100%' }}>
      <FlatTabs
        data={[
          {
            title: 'Create',
            key: 'create',
            onPress: () => {
              store.update({ fixedDepositTab: 'CREATE' })
            },
            isActive: store.fixedDepositTab !== 'VIEW',
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
      <Wrapper style={{ paddingVertical: 10 }}>
        {store.fixedDepositTab !== 'VIEW' ? <Create /> : <ViewComp />}
      </Wrapper>
    </TView>
  )
}
