import React from 'react'
import { Tab } from 'src/components/Tab'
import { AppStores } from 'src/lib/zustand'

export default function HistoryTabs() {
  const store = AppStores.useSettings()
  return (
    <Tab
      data={[
        {
          title: 'ALL',
          isActive: store.historyTab === 'ALL',
          onClick: () => {
            store.update({
              historyTab: 'ALL',
            })
          },
        },
        {
          title: 'AIRTIME',
          isActive: store.historyTab === 'AIRTIME',
          onClick: () => {
            store.update({
              historyTab: 'AIRTIME',
            })
          },
        },
      ]}
    />
  )
}
