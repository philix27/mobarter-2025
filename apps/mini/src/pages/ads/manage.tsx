import React from 'react'
import { Tab } from 'src/components/Tab'
import Wrapper from 'src/components/wrapper/Wrapper'
import { AddAdsView } from 'src/features/adverts'
import OpenAdverts from 'src/features/adverts/open'
import { AppStores } from 'src/lib/zustand'

export default function Page() {
  const store = AppStores.useSettings()
  return (
    <Wrapper hideBottomNav>
      <div className="w-full flex items-center justify-center">
        <Tab
          data={[
            {
              title: 'OPEN',
              isActive: store.manageAdsTab === 'OPEN',
              onClick: () => {
                store.update({
                  manageAdsTab: 'OPEN',
                })
              },
            },
            {
              title: 'CLOSED',
              isActive: store.manageAdsTab === 'CLOSED',
              onClick: () => {
                store.update({
                  manageAdsTab: 'CLOSED',
                })
              },
            },
            {
              title: 'ADD',
              isActive: store.manageAdsTab === 'ADD',
              onClick: () => {
                store.update({
                  manageAdsTab: 'ADD',
                })
              },
            },
          ]}
        />
      </div>
      <View />
    </Wrapper>
  )
}

function View() {
  const store = AppStores.useSettings()
  switch (store.manageAdsTab) {
    case 'ADD':
      return <AddAdsView />
    case 'OPEN':
      return <OpenAdverts />
    case 'CLOSED':
      return <OpenAdverts />
    default:
      return <OpenAdverts />
  }
}
