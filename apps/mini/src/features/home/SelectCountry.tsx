
import React from 'react'

import SelectCountry from '../others/SelectCountry'

import BottomModal from '@/src/components/BottomModal'
import { AppStores } from '@/src/lib/zustand'
import { mapCountryToData } from '@/src/lib'

export default function SelectCountryBtn() {
  const store = AppStores.useSettings()
  const currentTab = store.homeBtmSheet
  return (
    <>
      <div
        className="bg-primary rounded-full size-[30px]"
        onClick={() => {
          store.update({ homeBtmSheet: 'SELECT_COUNTRY' })
        }}
      >
        <img
          src={mapCountryToData[store.countryIso].flag}
          alt=""
          className="object-cover w-full h-full rounded-full"
        />
      </div>
      <BottomModal
        showSheet={currentTab === 'SELECT_COUNTRY'}
        onClose={() => {
          store.update({ homeBtmSheet: undefined })
        }}
      >
        <SelectCountry />
      </BottomModal>
    </>
  )
}
