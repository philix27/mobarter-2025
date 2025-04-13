import React from 'react'
import { Tab } from 'src/components/Tab'
import { AppStores } from 'src/lib/zustand'

export default function HomeTabs() {
  const store = AppStores.useSettings()
  return (
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
  )
}
