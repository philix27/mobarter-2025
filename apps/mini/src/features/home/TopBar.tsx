/* eslint-disable @next/next/no-img-element */
import { type ChainInfo, chains } from '@particle-network/chains'
import React, { useMemo } from 'react'
// import { Tab } from 'src/components/Tab'
import { AppStores } from 'src/lib/zustand'

import SelectCountryBtn from './SelectCountry'

export function TopBar() {
  const store = AppStores.useSettings()

  const supportChains = useMemo((): ChainInfo[] => {
    return chains
      .getAllChainInfos()
      .filter((chain) => chain.chainType === 'evm' && chain.id === 42220)
  }, [])

  return (
    <div className="w-full flex items-center justify-between">
      <SelectCountryBtn />

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
