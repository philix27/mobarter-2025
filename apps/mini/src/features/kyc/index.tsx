import React from 'react'

import FormGhana from './FormGhana'
import FormNigeria from './FormNigeria'
import KycBottomSheets from './ModalList'
import { Button } from '@/src/components/Button'
import { usePay } from '@/src/contract/hook'
import { CountriesIso } from '@/src/lib'
import { TokenId } from '@/src/lib/config'
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
  const { pay } = usePay()
  return (
    <>
      <div className="w-full">{Forms[store.countryIso]}</div>
      <KycBottomSheets />
      <Button
        onClick={() => {
          void pay({
            token: TokenId.cUSD,
            amount: '1.2',
            txName: 'AIRTIME',
            payload: {
              operatorId: 230
            },
          })
        }}
      >
        Attempt Pay
      </Button>
    </>
  )
}
