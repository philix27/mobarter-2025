import HeaderBar from '@/components/Header';
import AirtimeComp from '@/screens/others/Airtime';
import React from 'react';

export default function Page() {
  return (
    <>
      <HeaderBar title="Airtime" showBackBtn backTo="/p2p" />
      <AirtimeComp />
    </>
  );
}
