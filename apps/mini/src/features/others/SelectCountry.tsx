import React from 'react'
import { TileSimple } from 'src/components/TileSimple'
import { cn } from 'src/lib/utils'
import { AppStores } from 'src/lib/zustand'

export const essentialCountriesList = [
  {
    isoName: 'NG',
    name: 'Nigeria',
    continent: 'Africa',
    currencyCode: 'NGN',
    currencyName: 'Nigerian Naira',
    currencySymbol: '₦',
    flag: 'https://s3.amazonaws.com/rld-flags/ng.svg',
    callingCodes: ['+234'],
  },
  {
    isoName: 'GH',
    name: 'Ghana',
    continent: 'Africa',
    currencyCode: 'GHS',
    currencyName: 'Ghanaian Cedi',
    currencySymbol: 'GH₵',
    flag: 'https://s3.amazonaws.com/rld-flags/gh.svg',
    callingCodes: ['+233'],
  },
  {
    isoName: 'KE',
    name: 'Kenya',
    continent: 'Africa',
    currencyCode: 'KES',
    currencyName: 'Kenyan Shilling',
    currencySymbol: 'Ksh',
    flag: 'https://s3.amazonaws.com/rld-flags/ke.svg',
    callingCodes: ['+254'],
  },
]
export default function SelectCountry() {
  const store = AppStores.useSettings()
  return (
    <div className="w-full">
      {essentialCountriesList.map((val, i) => (
        <TileSimple
          key={i}
          title={val.name}
          desc={val.continent}
          imgUrl={val.flag}
          className={cn("bg-background", val.isoName === store.countryIso && "border-primary border")}
          onClick={() => {
            store.update({ countryIso: val.isoName })
          }}
        />
      ))}
    </div>
  )
}
