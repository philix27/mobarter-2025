/* eslint-disable @next/next/no-img-element */
import { type ChainInfo, chains } from '@particle-network/chains'
import React, { useMemo } from 'react'
// import { Tab } from 'src/components/Tab'
import { AppStores } from 'src/lib/zustand'

import { mapCountryToData } from '@/src/lib'

export function HomeTabs() {
  const store = AppStores.useSettings()

  const supportChains = useMemo((): ChainInfo[] => {
    return chains
      .getAllChainInfos()
      .filter((chain) => chain.chainType === 'evm' && chain.id === 42220)
  }, [])

  return (
    <div className="w-full flex items-center justify-between">
      <div
        className="bg-primary rounded-full size-[35px]"
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
      {/* <Tab
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
      /> */}
      <div
        className="rounded-full size-[35px]"
        onClick={() => {
          store.update({ homeBtmSheet: 'SELECT_NETWORK' })
        }}
      >
        <img
          src={store.chainIcon.length < 3 ? store.chainIcon : supportChains[0].icon}
          alt="flag"
          className="object-cover w-full h-full rounded-full"
        />
      </div>
    </div>
  )
}
