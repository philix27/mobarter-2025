import React from 'react'
import { AppStores } from 'src/lib/zustand'

import Details from './Details'
import Swap from './Exchange'

export default function SwapModal() {
  const store = AppStores.useSettings()
  return <div>{store.swapSteps === 'EXCHANGE' ? <Swap /> : <Details />}</div>
}
