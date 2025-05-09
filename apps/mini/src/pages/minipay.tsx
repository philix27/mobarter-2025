import React, { useEffect } from 'react'
import Wrapper from 'src/components/wrapper/Wrapper'
import { injected, useConnect } from 'wagmi'

import SendCryptoMinipay from '../features/others/SendCryptoMinipay'

export default function Minipay() {
  const win = window as any
  const { connect } = useConnect()

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
        <SendCryptoMinipay />
      </div>
    </Wrapper>
  )
}
