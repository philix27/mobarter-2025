import { HeaderBar } from '@/components/layout/Header'
import TopUpComp from '@/features/services/topUps'
import React from 'react'

export default function Page() {
  return (
    <>
      <HeaderBar title="Purchase Airtime" showBackBtn backTo="/payments" />
      <TopUpComp />
    </>
  )
}
