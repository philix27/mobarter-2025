import { HeaderBar } from '@/components/layout'
import DataBundlesComp from '@/features/services/topUps/DataBundles'
import React from 'react'

export default function Page() {
  return (
    <>
      <HeaderBar title="Data Bundles" showBackBtn backTo="/p2p" />
      <DataBundlesComp />
    </>
  )
}
