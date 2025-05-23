import { HeaderBar } from '@/components/layout/Header'
import StreamFundsComp from '@/features/others/StreamFunds'
import React from 'react'

export default function Page() {
  return (
    <>
      <HeaderBar title="Stream Fund" showBackBtn backTo="/p2p" />
      <StreamFundsComp />
    </>
  )
}
