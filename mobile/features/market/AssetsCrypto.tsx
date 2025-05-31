import { ActivityIndicator, FlatList, ScrollView } from 'react-native'
import { TView } from '@/components/ui'
import React from 'react'
import { AssetsRow } from './AssetsRow'
import { TokenId, Tokens } from '@/assets/tokens/tokens'
import { useGetTokens } from '@/api'
import { AppStores } from '@/lib/zustand'
import { useAddress } from '@/lib/zustand/web3/hooks'

export default function AssetsCrypto() {
  return (
    <ScrollView>
      <CryptoTokensList />
    </ScrollView>
  )
}

export function CryptoTokensList(props: { variant?: 'ALL' | 'CELO' }) {
  const addr = useAddress()
  const { data, isLoading } = useGetTokens(addr, 'NG')
  const store = AppStores.useView()
  const storeTokens = AppStores.useTokens()

  if (isLoading) {
    return <ActivityIndicator />
  }

  const getData = () => {
    if (!data) return []
    if (props.variant === 'ALL') return data
    if (store.activeViewAsset === 'ALL') return data
    return data?.filter((val) => val.chianId.toString() === store.activeViewAsset)
  }

  return (
    <TView style={{ paddingBottom: 50 }}>
      {getData().length > 0 && (
        <FlatList
          data={getData()}
          renderItem={({ item }) => {
            const s = item.symbol as TokenId
            const token = Tokens[s]
            const Logo = token.logo
            return (
              <AssetsRow
                // icon={<Logo height={30} width={30} />}
                imgUrl={item.logoUrl as any}
                currency={item.symbol}
                tokenAddr={item.address}
                balance={item.balance}
                tokenPrice={item.tokenPrice}
                performance={item.name}
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
            )
          }}
        />
      )}
    </TView>
  )
}
