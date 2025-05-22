import { Row, TView } from '@/components/ui'
import { useRef } from 'react'
import { AppStores } from '@/lib/zustand'
import { BottomSheet } from '@/components/layout'
import { RBSheetRef } from 'react-native-raw-bottom-sheet'

import { useActiveAccount } from 'thirdweb/react'
import { AssetsRow } from '../market/AssetsRow'
import { ScrollView } from 'react-native'
import { useGetTokens } from '@/api'

export default function SelectPaymentToken() {
  const store = AppStores.useTokens()
  // const store = AppStores.useCountries()
  const countrySheet = useRef<RBSheetRef>(undefined)
  const account = useActiveAccount()
  const { data } = useGetTokens(account!.address, 'NG')

  if (!data) return <TView />
  // const store.activeToken = data!.filter((val) => val.symbol === store.activeToken)[0]
  return (
    <>
      {store.activeToken && (
        <Row
          title={`${store.activeToken.name}`}
          desc={'Select your preferred token for Payments'}
          imgUrl={store.activeToken.logoUrl}
          onClick={() => {
            countrySheet.current?.open()
          }}
        />
      )}

      <BottomSheet ref={countrySheet!}>
        <ScrollView>
          {data &&
            data.map((item, i) => {
              return (
                <AssetsRow
                  key={i}
                  imgUrl={item.logoUrl as any}
                  currency={item.symbol}
                  tokenAddr={item.address}
                  balance={item.balance}
                  tokenPrice={item.tokenPrice}
                  performance={item.name}
                  onPress={() => {
                    store.update({
                      activeToken: item,
                    })
                    countrySheet.current?.close()
                  }}
                />
              )
            })}
          <TView style={{ height: 40 }} />
        </ScrollView>
      </BottomSheet>
    </>
  )
}
