import React from 'react'
import { Tab } from 'src/components/Tab'
import { AppStores } from 'src/lib/zustand'

export function Tabs() {
  const store = AppStores.useSettings()
  return (
    <Tab
      data={[
        {
          title: 'Balance',
          isActive: store.homeTab === 'BALANCE',
          onClick: () => {
            store.update({
              homeTab: 'BALANCE',
            })
          },
        },
        {
          title: 'History',
          isActive: store.homeTab === 'TX_HISTORY',
          onClick: () => {
            store.update({
              homeTab: 'TX_HISTORY',
            })
          },
        },
      ]}
    />
  )
}
