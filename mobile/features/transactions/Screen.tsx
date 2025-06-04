import { TView, Wrapper } from '@/components'
import { HeaderTabs } from '@/components/BHeaderTab'
import variables from '@/lib/constants/variables'
import React from 'react'
import OrdersTransactions from './Orders'
import WalletTransactions from './Wallet'
import { useSavings } from '../savings/zustand'
import { useTransactions } from './zustand'

export default function TransactionsScreen() {
  const store = useTransactions()
  return (
    <TView style={{ alignItems: 'center' }}>
      <HeaderTabs
        style={{ width: variables.width / 1.5 }}
        data={[
          {
            title: 'Orders',
            key: 'Orders',
            onPress: () => {
              store.update({ activeTab: 'ORDERS' })
            },
            isActive: store.activeTab !== 'TRANSACTIONS',
          },
          {
            title: 'Wallet',
            key: 'Transactions',
            onPress: () => {
              store.update({ activeTab: 'TRANSACTIONS' })
            },
            isActive: store.activeTab === 'TRANSACTIONS',
          },
        ]}
      />
      <Wrapper>
        {store.activeTab !== 'TRANSACTIONS' ? <WalletTransactions /> : <OrdersTransactions />}
      </Wrapper>
    </TView>
  )
}
