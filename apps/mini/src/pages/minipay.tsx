import Head from 'next/head';
import React, { useEffect, useState } from 'react';
import Wrapper from 'src/components/wrapper/Wrapper';
import { injected, useConnect } from 'wagmi';



import { Tab } from '../components/Tab';
import SelectCountryBtn from '../features/home/SelectCountry';
import ElectricityBill from '../features/others/ElectricityBill';
import Airtime from '../features/others/TopUpAirtime';
import TopUpData from '../features/others/TopUpData';
import { AppStores } from '../lib/zustand';


export function FrameTitle(props: {
  version: string
  imageUrl: string
  'button.title': string
  'button.action.type': 'launch_frame'
  'button.action.url'?: string
  'button.action.name'?: string
  'button.action.splashImageUrl'?: string
  'button.action.splashBackgroundColor'?: string
}) {
  return (
    <Head>
      <meta name="fc:frame" content={JSON.stringify(props)} />
    </Head>
  )
}
export default function Minipay() {
  const win = window as any
  const store = AppStores.useSettings()
  const { connect } = useConnect()
  // const [userAddress, setUserAddress] = useState('')
  const [isMounted, setIsMounted] = useState(false)
  // const { address, isConnected } = useAccount()

  useEffect(() => {
    setIsMounted(true)
  }, [])

  // useEffect(() => {
  //   if (isConnected && address) {
  //     // setUserAddress(address)
  //   }
  // }, [address, isConnected])

  useEffect(() => {
    if (win.ethereum && win.ethereum.isMiniPay) {
      //     // User is using MiniPay so hide connect wallet button.

      //     store.update({ appEnv: 'MINIPAY' })

      connect({ connector: injected({ target: 'metaMask' }) })
    }
  }, [connect, win.ethereum])

  if (!isMounted) {
    return null
  }
  return (
    <Wrapper hideBottomNav>
      <div className="w-full flex items-center justify-center flex-col pt-4">
        <TopBar />
        {store.minipayTab === 'AIRTIME' && <Airtime />}
        {store.minipayTab === 'DATA' && <TopUpData isData />}
        {store.minipayTab === 'ELECTRICITY' && <ElectricityBill />}
      </div>
    </Wrapper>
  )
}

export function TopBar() {
  const store = AppStores.useSettings()
  const _tabs = [
    {
      title: 'Airtime',
      isActive: store.minipayTab === 'AIRTIME',
      onClick: () => {
        store.update({ minipayTab: 'AIRTIME' })
      },
    },
    {
      title: 'Data',
      isActive: store.minipayTab === 'DATA',
      onClick: () => {
        store.update({ minipayTab: 'DATA' })
      },
    },
  ]

  const getTab = () => {
    const list = _tabs

    if (store.countryIso === 'NG')
      return list.concat({
        title: 'Utility',
        isActive: store.minipayTab === 'ELECTRICITY',
        onClick: () => {
          store.update({ minipayTab: 'ELECTRICITY' })
        },
      })

    return list
  }
  return (
    <div className="flex items-center justify-between w-full mb-3">
      <SelectCountryBtn />
      <Tab data={getTab()} />
      <div />
    </div>
  )
}