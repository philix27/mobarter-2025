import { TView } from '@/components/ui/TView'

import { Row } from '@/components/ui/Row'
import React, { useRef } from 'react'

import { AppStores } from '@/lib/zustand'

import { useGetCountries } from '@/api/countries'
import { BtmSheet } from '@/components/layout'

export default function SelectCountry() {
  const store = AppStores.useCountries()
  const countrySheet = BtmSheet.useRef()
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

      <BtmSheet.Modal ref={countrySheet!}>
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
      </BtmSheet.Modal>
    </>
  )
}
