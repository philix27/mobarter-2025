import HeaderBar from '@/components/Header';
import SchedulePaymentsComp from '@/screens/others/SchedulePayments';
import React from 'react';

export default function Page() {
  return (
    <>
      <HeaderBar title="Schedule Payments" showBackBtn backTo="/p2p" />
      <SchedulePaymentsComp />
    </>
  );
}
