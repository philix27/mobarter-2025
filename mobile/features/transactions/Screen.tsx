import { TView, Wrapper } from '@/components'
import React from 'react'
import OrdersTransactions from './Orders'
import WalletTransactions from './Wallet'
import { useTransactions } from './zustand'
import { FlatTabs } from '@/components/FlatTabs'

export default function TransactionsScreen() {
  const store = useTransactions()
  return (
    <TView style={{ alignItems: 'center', width: '100%' }}>
      <FlatTabs
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
