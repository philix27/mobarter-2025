import React from 'react'
import { TileSimple } from 'src/components/TileSimple'
import { countriesList } from 'src/lib/countries'

export default function SelectCountry() {
  return (
    <div className="w-full">
      {countriesList.map((val, i) => (
        <TileSimple key={i} title={val.name} desc={val.continent} imgUrl={val.flag} />
      ))}
    </div>
  )
}
