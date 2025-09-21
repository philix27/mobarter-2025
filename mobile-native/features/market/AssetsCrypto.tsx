import { ActivityIndicator, FlatList, ScrollView } from 'react-native'
import { TView } from '@/components'
import React from 'react'
import { AssetsRow } from './AssetsRow'
import { AppStores } from '@/lib/zustand'
import Hooks from '@/hooks'
import { Api } from '@/graphql'

export default function AssetsCrypto() {
  return (
    <ScrollView>
      <CryptoTokensList />
    </ScrollView>
  )
}

export type ITokenCategory = 'ALL' | 'CELO' | 'PAYABLE' | 'SELLABLE' | 'BUYABLE'
export function CryptoTokensList(props: {
  variant?: 'ALL' | 'CELO' | 'PAYABLE' | 'SELLABLE' | 'BUYABLE'
}) {
  const addr = Hooks.useAddress()
  // const { data, isLoading } = useGetTokens(addr, 'NG')
  const { data, loading: isLoading } = Api.useStatic_GetTokens()
  const store = AppStores.useView()
  const storeTokens = AppStores.useTokens()

  if (isLoading) {
    return <ActivityIndicator />
  }

  const getData = () => {
    if (!data) return []

    if (props.variant === 'PAYABLE') return data.static_getTokens.filter((item) => item.isPayable)

    if (props.variant === 'ALL') return data.static_getTokens

    if (store.activeViewAsset === 'ALL') return data.static_getTokens

    const filtered = data.static_getTokens?.filter(
      (val) => val.chainId.toString() === store.activeViewAsset
    )

    if (filtered.length === 0) return []

    return filtered
  }

  return (
    <TView style={{ paddingBottom: 150, width: '100%' }}>
      {getData().length > 0 &&
        getData().map((item, i) => (
          <AssetsRow
            key={i}
            imgUrl={item.logoUrl as any}
            chainId={item.chainId.toString()}
            currency={item.symbol}
            tokenAddr={item.address}
            tokenPrice={''}
            performance={item.name}
            decimals={item.decimals}
            onPress={() => {
              storeTokens.update({ activeToken: item })
              return
              // router.push({
              //   pathname: `/coin/[id]`,
              // pathname: `/coin/[id]`,
              // pathname: `/coin/${val.symbol}`,
              //   params: { title: val.title },
              // });
            }}
          />
        ))}
    </TView>
  )
}
