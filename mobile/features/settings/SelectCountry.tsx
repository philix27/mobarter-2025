import { TView } from '@/components/ui/TView'

import {Row} from '@/components/ui/Row'
import { useRef } from 'react'

import { AppStores } from '@/lib/zustand'

import { BottomSheet } from '@/components/layout/BottomSheet'
import { RBSheetRef } from 'react-native-raw-bottom-sheet'
import { useGetCountries } from '@/api/countries'

export default function SelectCountry() {
  const store = AppStores.useCountries()
  const countrySheet = useRef<RBSheetRef>(undefined)
  const { data } = useGetCountries()

  if (!data) return <TView />
  const aCountry = data!.filter((val) => val.isoName === store.activeIso)[0]
  return (
    <>
      {aCountry && (
        <Row
          title={aCountry.name}
          desc={'Select your preferred country'}
          imgUrl={aCountry.flag}
          onClick={() => {
            countrySheet.current?.open()
          }}
        />
      )}

      <BottomSheet ref={countrySheet!}>
        {data &&
          data.map((item, i) => {
            return (
              <Row
                key={i}
                title={item.currencyName}
                desc={`${item.currencyName} | ${item.callingCodes} | ${item.currencySymbol}`}
                imgUrl={item.flag}
                onClick={() => {
                  store.update({
                    activeIso: item.isoName,
                  })
                  countrySheet.current?.close()
                }}
              />
            )
          })}
      </BottomSheet>
    </>
  )
}
