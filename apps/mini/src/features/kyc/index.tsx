import React from 'react'

import KycBottomSheets from './BottomSheets'
import FormGhana from './FormGhana'
import FormNigeria from './FormNigeria'
import { CountriesIso } from '@/src/lib'
import { AppStores } from '@/src/lib/zustand'

const Forms: Record<CountriesIso, JSX.Element> = {
  NG: <FormNigeria />,
  GH: <FormGhana />,
  KE: <FormNigeria />,
  MW: <FormNigeria />,
  RW: <FormNigeria />,
  TZ: <FormNigeria />,
  UG: <FormNigeria />,
  ZA: <FormNigeria />,
}
export default function Kyc() {
  const store = AppStores.useSettings()
  store.countryIso
  return (
    <>
      <div className="w-full">{Forms[store.countryIso]}</div>
      <KycBottomSheets />
    </>
  )
}
