import { TView, Wrapper } from '@/components'
import variables from '@/lib/constants/variables'
import React from 'react'
import { useSavings } from '../zustand'
import ViewComp from './View'
import Create from './Create'
import { FlatTabs } from '@/components/FlatTabs'

export default function FixedDepositPage() {
  const store = useSavings()
  return (
    <Wrapper>
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
      <TView style={{ width: '100%', paddingVertical: 10 }}>
        {store.fixedDepositTab !== 'VIEW' ? <Create /> : <ViewComp />}
      </TView>
    </Wrapper>
  )
}
