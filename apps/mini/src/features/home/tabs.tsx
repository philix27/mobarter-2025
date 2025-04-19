import React from 'react'
import { Tab } from 'src/components/Tab'
import { AppStores } from 'src/lib/zustand'

export default function HomeTabs() {
  const store = AppStores.useSettings()
  return (
    <div className="w-full items-center justify-between">
      <div
        className="bg-primary rounded-full size-[50px]"
        onClick={() => {
          store.update({ homeBtmSheet: 'SELECT_COUNTRY' })
        }}
      ></div>
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
        className="bg-primary rounded-full size-[50px]"
        onClick={() => {
          store.update({ homeBtmSheet: 'SELECT_NETWORK' })
        }}
      ></div>
    </div>
  )
}
