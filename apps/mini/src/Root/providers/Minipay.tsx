import { PropsWithChildren, useEffect } from 'react'
import { custom } from 'viem'
import { celo, celoAlfajores } from 'viem/chains'
import { WagmiProvider, createConfig, injected, useConnect } from 'wagmi'

import { AppStores } from '@/src/lib/zustand'

export function MinipayProvider({ children }: PropsWithChildren) {
  const win = window as any

  const config = createConfig({
    chains: [celo, celoAlfajores],
    transports: {
      [celo.id]: custom(win.ethereum),
      [celoAlfajores.id]: custom(win.ethereum),
    },
  })

  return (
    <WagmiProvider config={config}>
      <Setup />
      {children}
    </WagmiProvider>
  )
}

function Setup() {
  const win = window as any
  const store = AppStores.useSettings()
  const { connect } = useConnect()

  useEffect(() => {
    if (win.ethereum && win.ethereum.isMiniPay) {
      // User is using MiniPay so hide connect wallet button.

      store.update({ appEnv: 'MINIPAY' })

      connect({ connector: injected({ target: 'metaMask' }) })
    }
  }, [connect])
  return <></>
}
