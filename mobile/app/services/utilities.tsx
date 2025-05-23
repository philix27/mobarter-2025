import { HeaderBar } from '@/components/layout'
import UtilityComp from '@/features/others/Utilities'
import React from 'react'

export default function Page() {
  return (
    <>
      <HeaderBar title="Fund Betting Wallets" showBackBtn backTo="/p2p" />
      <UtilityComp />
    </>
  )
}
