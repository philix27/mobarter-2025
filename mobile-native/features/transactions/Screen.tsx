import { TView, Wrapper } from '@/components'
import React from 'react'
import WalletTransactions from './Wallet'
import { FlatTabs } from '@/components/FlatTabs'
import { Api } from '@/graphql'
import { AppStores } from '@/lib'

export default function TransactionsScreen() {
  // const store = useTransactions()
  const { data, loading: isLoading } = Api.useStatic_GetChains()
  const store = AppStores.useView()
  const activeChain =
    store.activeViewAsset.toUpperCase() === 'ALL' ? '42220' : store.activeViewAsset

  if (isLoading) {
    return <TView />
  }

  const chainList = data?.static_getChains.map((item) => {
    return {
      title: item.name,
      key: item.name,
      onPress: () => {
        store.update({ activeViewAsset: item.chainId.toString() })
      },
      isActive: activeChain === item.chainId.toString(),
    }
  })

  return (
    <TView style={{ alignItems: 'center', width: '100%' }}>
      {/* <FlatTabs
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
      /> */}
      <FlatTabs style={{ marginBottom: 10 }} data={[...chainList!]} />
      <Wrapper>
        <WalletTransactions chainId={activeChain} />
      </Wrapper>
    </TView>
  )
}
'https://insight.thirdweb.com/v1/wallets/0x767E0c7780ab726D9bFC727d11EE6fAF06ae16f9/transactions?chain_id=42220&chain_id=8453&filter_block_timestamp_gte=1743150510&limit=20&clientId=YOUR_THIRDWEB_CLIENT_ID'