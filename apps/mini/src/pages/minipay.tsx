// import { sdk } from '@farcaster/frame-sdk'
import React, { useEffect, useState } from 'react'
import Wrapper from 'src/components/wrapper/Wrapper'
import { injected, useAccount, useConnect, useSignMessage } from 'wagmi'

import { Tab } from '../components/Tab'
import SelectCountryBtn from '../features/home/SelectCountry'
import ElectricityBill from '../features/others/ElectricityBill'
import Airtime from '../features/others/TopUpAirtime'
import TopUpData from '../features/others/TopUpData'
import { AppStores } from '../lib/zustand'

export default function Minipay() {
  const win = window as any
  const store = AppStores.useSettings()
  const { connect } = useConnect()

  // const [userAddress, setUserAddress] = useState('')

  // const { address, isConnected } = useAccount()

  useEffect(() => {
    if (win.ethereum && win.ethereum.isMiniPay) {
      //     // User is using MiniPay so hide connect wallet button.

      connect({ connector: injected({ target: 'metaMask' }) })
    }
  }, [connect, win.ethereum])

  useEffect(() => {
    // void sdk.actions.ready()
  }, [])

  return (
    <Wrapper hideBottomNav>
      <div className="w-full flex items-center justify-center flex-col pt-4">
        <TopBar />
        {store.appEnv === 'FARCASTER' && <ConnectMenu />}

        {store.minipayTab === 'AIRTIME' && <Airtime />}
        {store.minipayTab === 'DATA' && <TopUpData isData />}
        {store.minipayTab === 'ELECTRICITY' && <ElectricityBill />}
      </div>
    </Wrapper>
  )
}

function ConnectMenu() {
  const { isConnected, address } = useAccount()
  const { connect, connectors } = useConnect()

  if (isConnected) {
    return (
      <>
        <div>Connected account:</div>
        <div>{address}</div>
        <SignButton />
      </>
    )
  }

  return (
    <button type="button" onClick={() => connect({ connector: connectors[0] })}>
      Connect
    </button>
  )
}

function SignButton() {
  const { signMessage, isLoading, data, error } = useSignMessage()

  return (
    <>
      <button
        type="button"
        onClick={() => signMessage({ message: 'hello world' })}
        disabled={isLoading}
      >
        {isLoading ? 'Signing...' : 'Sign message'}
      </button>
      {data && (
        <>
          <div>Signature</div>
          <div>{data}</div>
        </>
      )}
      {error && (
        <>
          <div>Error</div>
          <div>{error.message}</div>
        </>
      )}
    </>
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
