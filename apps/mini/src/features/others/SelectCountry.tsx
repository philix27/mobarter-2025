import React from 'react'
import { TileSimple } from 'src/components/TileSimple'
import { cn } from 'src/lib/utils'
import { AppStores } from 'src/lib/zustand'

import { essentialCountriesList } from '@/src/lib'

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
          className={cn('bg-card', val.isoName === store.countryIso && 'border-primary border')}
          onClick={() => {
            store.update({ countryIso: val.isoName })
          }}
        />
      ))}
    </div>
  )
}
