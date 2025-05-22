import { HeaderBar } from '@/components/layout'
import AirtimeComp from '@/features/others/Airtime'
import React from 'react'

export default function Page() {
  return (
    <>
      <HeaderBar title="Airtime" showBackBtn backTo="/payments" />
      <AirtimeComp />
    </>
  )
}
