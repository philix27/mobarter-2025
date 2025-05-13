import HeaderBar from '@/components/Header';
import DataBundlesComp from '@/screens/others/DataBundles';
import React from 'react';

export default function Page() {
  return (
    <>
      <HeaderBar title="Data Bundles" showBackBtn backTo="/p2p" />
      <DataBundlesComp />
    </>
  );
}
