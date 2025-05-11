import { useMutation } from '@apollo/client'
import { connectorsForWallets } from '@rainbow-me/rainbowkit'
import { injectedWallet } from '@rainbow-me/rainbowkit/wallets'
import {
  Auth_MinipayLoginDocument,
  MutationAuth_MinipayLoginArgs,
  MutationResponse,
} from '@repo/api'
import { PropsWithChildren } from 'react'
import { http } from 'viem'
import { celo, celoAlfajores } from 'viem/chains'
import { WagmiProvider, createConfig, useAccount } from 'wagmi'
import { base } from 'wagmi/chains'

import { AppStores } from '@/src/lib/zustand'

export function useInitMinipayUser() {
  const store = AppStores.useUser()

  const { address } = useAccount()

  const [mutate] = useMutation<
    MutationResponse<'auth_minipayLogin'>,
    MutationAuth_MinipayLoginArgs
  >(Auth_MinipayLoginDocument)

  if (Date.now() < store.timeTokenStored) {
    return
  }

  const now = Date.now() // Current time in ms

  const twoDaysInMs = 1 * 24 * 60 * 60 * 1000 // 1 day -> hours -> minutes -> seconds -> milliseconds

  const futureTime = now + twoDaysInMs

  // void sdk.actions.ready({ disableNativeGestures: true })

  void mutate({
    variables: {
      input: {
        walletAddress: address!,
      },
    },
    onCompleted: async (data) => {
      store.update({
        walletAddress: address!,
        token: data.auth_minipayLogin.token!,
        timeTokenStored: futureTime,
      })
    },
  })
  // }
  return {}
}

const connectors = connectorsForWallets(
  [
    {
      groupName: 'Recommended',
      wallets: [injectedWallet],
    },
  ],
  {
    appName: 'Mobarter',
    appDescription: 'One stop payment solution for Africans',
    appUrl: 'https://app.mobarter.com',
    appIcon: 'https://app.mobarter.com/logo.png',
    projectId: process.env.WC_PROJECT_ID ?? '044601f65212332475a09bc14ceb3c34',
  }
)

export function MinipayProvider({ children }: PropsWithChildren) {
  // const win = window as any

  const config = createConfig({
    connectors: [...connectors],
    chains: [celo, celoAlfajores, base],
    transports: {
      [celo.id]: http(),
      [celoAlfajores.id]: http(),
      [base.id]: http(),
      // [celo.id]: custom(win.ethereum),
      // [celoAlfajores.id]: custom(win.ethereum),
    },
  })

  return <WagmiProvider config={config}>{children}</WagmiProvider>
}
