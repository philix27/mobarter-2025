import { HeaderBar } from '@/components/layout'
import DataPlanComp from '@/features/others/DataPlan'
import React from 'react'

export default function Page() {
  return (
    <>
      <HeaderBar title="Data Plan" showBackBtn backTo="/p2p" />
      <DataPlanComp />
    </>
  )
}
