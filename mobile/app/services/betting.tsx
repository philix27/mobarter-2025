import { HeaderBar } from '@/components/layout'
import BettingComp from '@/features/services/Betting'
import React from 'react'

export default function Page() {
  return (
    <>
      <HeaderBar title="Fund Betting Wallets" showBackBtn backTo="/p2p" />
      <BettingComp />
    </>
  )
}
