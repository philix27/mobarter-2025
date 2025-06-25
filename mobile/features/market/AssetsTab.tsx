import { TText, TView } from '@/components/ui'
import { Api } from '@/graphql'
import { useColor } from '@/hooks/useColor'
import { AppStores } from '@/lib/zustand'
import React from 'react'
import { TouchableOpacity } from 'react-native'
// import { useGetChains } from '@/api'

export default function AssetsTab() {
  const store = AppStores.useView()
  const { data, loading: isLoading } = Api.useStatic_GetChains()

  if (isLoading) {
    return <TView />
  }
  
  return (
    <TView>
      <TView
        style={{
          display: 'flex',
          flexDirection: 'row',
          padding: 2,
          borderRadius: 7,
        }}
      >
        <TabIem
          title={'ALL'}
          isActive={store.activeViewAsset === 'ALL'}
          onPress={() => {
            store.update({ activeViewAsset: 'ALL' })
          }}
        />
        {data?.static_getChains.map((item, i) => (
          <TabIem
            key={i}
            title={item.name}
            isActive={store.activeViewAsset === item.chainId.toString()}
            onPress={() => {
              store.update({ activeViewAsset: item.chainId.toString() })
            }}
          />
        ))}
      </TView>
    </TView>
  )
}

function TabIem(params: { title: string; isActive: boolean; onPress: VoidFunction }) {
  const appColor = useColor()
  return (
    <TouchableOpacity onPress={params.onPress}>
      <TView
        style={{
          paddingVertical: 5,
          paddingHorizontal: 10,
          marginRight: 5,
        }}
      >
        <TText
          type="default"
          style={{
            fontSize: 14,
            fontWeight: params.isActive ? 600 : 300,
            color: params.isActive ? appColor.primary : appColor.muted,
          }}
        >
          {params.title}
        </TText>
      </TView>
    </TouchableOpacity>
  )
}
