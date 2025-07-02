import { FlatTabs } from '@/components/FlatTabs'
import { TView } from '@/components/ui'
import { Api } from '@/graphql'
import { AppStores } from '@/lib/zustand'
import React from 'react'

export default function AssetsTab() {
  const store = AppStores.useView()
  const { data, loading: isLoading } = Api.useStatic_GetChains()

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
      isActive: store.activeViewAsset === item.chainId.toString(),
    }
  })

  return (
    <FlatTabs
      style={{ marginBottom: 10 }}
      data={[
        {
          title: 'ALL',
          key: 'ALL',
          onPress: () => {
            store.update({ activeViewAsset: 'ALL' })
          },
          isActive: store.activeViewAsset === 'ALL',
        },
        ...chainList!,
      ]}
    />
  )
}
