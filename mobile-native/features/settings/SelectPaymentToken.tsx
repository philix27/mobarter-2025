import { Row, TView } from '@/components'
import { AppStores } from '@/lib/zustand'
import { BtmSheet } from '@/components/layout'

import { AssetsRow } from '../market/AssetsRow'
import { ScrollView } from 'react-native'
import AppHooks from '@/hooks'
import { Api } from '@/graphql'

export default function SelectPaymentToken() {
  const store = AppStores.useTokens()
  const addr = AppHooks.useAddress()
  // const store = AppStores.useCountries()
  const countrySheet = BtmSheet.useRef()
  // const account = useActiveAccount()
  // const { data } = useGetTokens(addr, 'NG')
  const { data, loading: isLoading } = Api.useStatic_GetTokens()

  if (!data) return <TView />
  // const store.activeToken = data!.filter((val) => val.symbol === store.activeToken)[0]
  return (
    <>
      {store.activeToken ? (
        <Row
          title={`${store.activeToken.name}`}
          desc={'Select your preferred token for Payments'}
          imgUrl={store.activeToken.logoUrl}
          onClick={() => {
            countrySheet.current?.open()
          }}
        />
      ) : (
        <Row
          title={`Select Payment token`}
          desc={'Select your preferred token for Payments'}
          // imgUrl={store.activeToken!.logoUrl}
          onClick={() => {
            countrySheet.current?.open()
          }}
        />
      )}

      <BtmSheet.Modal ref={countrySheet!}>
        <ScrollView style={{ width: "100%" }}>
          {data &&
            data.static_getTokens.map((item, i) => {
              return (
                <AssetsRow
                  key={i}
                  imgUrl={item.logoUrl as any}
                  currency={item.symbol}
                  tokenAddr={item.address}
                  tokenPrice={'0.00'}
                  performance={item.name}
                  onPress={() => {
                    store.update({
                      activeToken: item,
                    })
                    countrySheet.current?.close()
                  }}
                  chainId={item.chainId.toString()}
                />
              )
            })}
          <TView style={{ height: 40 }} />
        </ScrollView>
      </BtmSheet.Modal>
    </>
  )
}
