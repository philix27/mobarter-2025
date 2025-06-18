import { HeaderBar } from '@/components/layout'
import SchedulePaymentsComp from '@/features/services/SchedulePayments'
import React from 'react'

export default function Page() {
  return (
    <>
      <HeaderBar title="Schedule Payments" showBackBtn backTo="/p2p" />
      <SchedulePaymentsComp />
    </>
  )
}
