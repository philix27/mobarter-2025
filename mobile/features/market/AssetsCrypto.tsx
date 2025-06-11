import { ActivityIndicator, FlatList, ScrollView } from 'react-native'
import { TText, TView } from '@/components/ui'
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

export type ITokenCategory = 'ALL' | 'CELO' | 'PAYABLE' | 'SELLABLE' | 'BUYABLE'
export function CryptoTokensList(props: {
  variant?: 'ALL' | 'CELO' | 'PAYABLE' | 'SELLABLE' | 'BUYABLE'
}) {
  const addr = useAddress()
  const { data, isLoading } = useGetTokens(addr, 'NG')
  const store = AppStores.useView()
  const storeTokens = AppStores.useTokens()

  if (isLoading) {
    return <ActivityIndicator />
  }

  const getData = () => {
    if (!data) return []
    if (props.variant === 'PAYABLE') return data.filter((item) => item.isPayable)
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

            if (token === undefined) {
              return (
                <AssetsRow
                  imgUrl={item.logoUrl as any}
                  chainId={item.chianId.toString()}
                  currency={item.symbol}
                  tokenAddr={item.address}
                  tokenPrice={item.tokenPrice}
                  performance={item.name}
                  onPress={() => {
                    storeTokens.update({ activeToken: item })
                    return
                  }}
                />
              )
            }

            return (
              <AssetsRow
                imgUrl={item.logoUrl as any}
                chainId={item.chianId.toString()}
                currency={item.symbol}
                tokenAddr={item.address}
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
