import HeaderBar from '@/components/Header';
import CableTvComp from '@/screens/others/CableTv';
import React from 'react';

export default function Page() {
  return (
    <>
      <HeaderBar title="TV Subscriptions" showBackBtn backTo="/p2p" />
      <CableTvComp />
    </>
  );
}
