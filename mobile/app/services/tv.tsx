import { HeaderBar } from '@/components/layout'
import CableTvScreen from '@/features/services/cable-tv'
import React from 'react'

export default function Page() {
  return (
    <>
      <HeaderBar title="TV Subscriptions" showBackBtn backTo="/p2p" />
      <CableTvScreen />
    </>
  )
}
