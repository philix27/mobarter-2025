import React from 'react'
import { Tab } from 'src/components/Tab'
import { AppStores } from 'src/lib/zustand'

import { essentialCountriesList } from '../others/SelectCountry'

export default function HomeTabs() {
  const store = AppStores.useSettings()
  return (
    <div className="w-full flex items-center justify-between">
      <div
        className="bg-primary rounded-full size-[35px]"
        onClick={() => {
          store.update({ homeBtmSheet: 'SELECT_COUNTRY' })
        }}
      >
        <img
          src={essentialCountriesList.filter((val) => val.isoName === store.countryIso)[0].flag}
          alt=""
          className="object-cover w-full h-full rounded-full"
        />
      </div>
      <Tab
        data={[
          {
            title: 'WALLET',
            isActive: store.homeTab === 'Balances',
            onClick: () => {
              store.update({
                homeTab: 'Balances',
              })
            },
          },
          {
            title: 'UTILITIES',
            isActive: store.homeTab === 'Services',
            onClick: () => {
              store.update({
                homeTab: 'Services',
              })
            },
          },
        ]}
      />
      <div
        className="bg-primary rounded-full size-[35px]"
        onClick={() => {
          store.update({ homeBtmSheet: 'SELECT_NETWORK' })
        }}
      >
        <img src={store.chainIcon} alt="flag" className="object-cover w-full h-full rounded-full" />
      </div>
    </div>
  )
}
