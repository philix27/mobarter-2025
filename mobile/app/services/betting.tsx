import { HeaderBar } from '@/components/layout'
import BettingWallet from '@/features/services/betting'
import React from 'react'

export default function Page() {
  return (
    <>
      <HeaderBar title="Fund Betting Wallets" showBackBtn backTo="/p2p" />
      <BettingWallet />
    </>
  )
}
