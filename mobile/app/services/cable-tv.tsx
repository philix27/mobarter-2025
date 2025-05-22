import { HeaderBar } from '@/components/layout'
import CableTvComp from '@/features/others/CableTv'
import React from 'react'

export default function Page() {
  return (
    <>
      <HeaderBar title="TV Subscriptions" showBackBtn backTo="/p2p" />
      <CableTvComp />
    </>
  )
}
