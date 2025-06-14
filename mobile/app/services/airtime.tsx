import { HeaderBar } from '@/components/layout/Header'
import TopUpComp from '@/features/services/topUps'
import React from 'react'

export default function Page() {
  return (
    <>
      <HeaderBar title="Airtime" showBackBtn backTo="/payments" />
      <TopUpComp />
    </>
  )
}
