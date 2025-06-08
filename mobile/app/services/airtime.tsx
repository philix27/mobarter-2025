import { HeaderBar } from '@/components/layout/Header'
import AirtimeComp from '@/features/topUps/Airtime'
import React from 'react'

export default function Page() {
  return (
    <>
      <HeaderBar title="Airtime" showBackBtn backTo="/payments" />
      <AirtimeComp />
    </>
  )
}
