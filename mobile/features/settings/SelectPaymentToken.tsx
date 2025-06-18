import { Row, TView } from '@/components/ui'
import { AppStores } from '@/lib/zustand'
import { BtmSheet } from '@/components/layout'

import { AssetsRow } from '../market/AssetsRow'
import { ScrollView } from 'react-native'
import { useGetTokens } from '@/api'
import AppHooks from '@/hooks'

export default function SelectPaymentToken() {
  const store = AppStores.useTokens()
  const addr = AppHooks.useAddress()
  // const store = AppStores.useCountries()
  const countrySheet = BtmSheet.useRef()
  // const account = useActiveAccount()
  const { data } = useGetTokens(addr, 'NG')

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
        <ScrollView>
          {data &&
            data.map((item, i) => {
              return (
                <AssetsRow
                  key={i}
                  imgUrl={item.logoUrl as any}
                  currency={item.symbol}
                  tokenAddr={item.address}
                  tokenPrice={item.tokenPrice}
                  performance={item.name}
                  onPress={() => {
                    store.update({
                      activeToken: item,
                    })
                    countrySheet.current?.close()
                  }}
                  chainId={item.chianId.toString()}
                />
              )
            })}
          <TView style={{ height: 40 }} />
        </ScrollView>
      </BtmSheet.Modal>
    </>
  )
}
