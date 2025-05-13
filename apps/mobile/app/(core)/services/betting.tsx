import HeaderBar from '@/components/Header';
import BettingComp from '@/screens/others/Betting';
import React from 'react';

export default function Page() {
  return (
    <>
      <HeaderBar title="Fund Betting Wallets" showBackBtn backTo="/p2p" />
      <BettingComp />
    </>
  );
}
