import HeaderBar from '@/components/Header';
import StreamFundsComp from '@/screens/others/StreamFunds';
import React from 'react';

export default function Page() {
  return (
    <>
      <HeaderBar title="Stream Fund" showBackBtn backTo="/p2p" />
      <StreamFundsComp />
    </>
  );
}
