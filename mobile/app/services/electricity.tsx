import { HeaderBar } from '@/components/layout'
import ElectricityBillScreen from '@/features/services/electricity'
import React from 'react'

export default function Page() {
  return (
    <>
      <HeaderBar title="Fund Betting Wallets" showBackBtn backTo="/p2p" />
      <ElectricityBillScreen />
    </>
  )
}
