import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client'
// import { RainbowKitProvider, connectorsForWallets } from '@rainbow-me/rainbowkit'
// import { injectedWallet } from '@rainbow-me/rainbowkit/wallets'
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { type PropsWithChildren } from 'react'
import { Toaster } from 'sonner'
import { WagmiProvider, createConfig, http, useBalance } from 'wagmi'
import { base, celo, celoAlfajores } from 'wagmi/chains'

import { Spinner } from '../components/Spinner'
import { useDidMount } from '../hooks/useDidMount'
import { COLLECTOR, ChainId, TokenId, getTokenAddress } from '../lib/config'
import { AppStores } from '../lib/zustand'

import { TgSetup } from './Telegram'

const apollo = (token: string) => {
  // try {
  const client = new ApolloClient({
    uri: process.env.NEXT_PUBLIC_BACKEND_SERVER,
    headers: {
      Authorization: `Bearer ${token}`,
    },
    cache: new InMemoryCache(),
  })
  return client
  // } catch (e) {
  //   // logger.error('Initialization err' + e)
  //   return undefined
  // }
}

// const connectors = connectorsForWallets(
//   [
//     {
//       groupName: 'Recommended',
//       wallets: [injectedWallet],
//     },
//   ],
//   {
//     appName: 'Mobarter',
//     projectId: process.env.WC_PROJECT_ID ?? '044601f65212332475a09bc14ceb3c34',
//   }
// )

const config = createConfig({
  // connectors,
  chains: [celo, celoAlfajores, base],
  transports: {
    [celo.id]: http(),
    [celoAlfajores.id]: http(),
    [base.id]: http(),
  },
})

if (typeof window !== 'undefined' && process.env.NEXT_PUBLIC_PARTICLE_ENV === 'development') {
  window.__PARTICLE_ENVIRONMENT__ = 'development'
}

// import { WebProvider } from './providers/Web'

const queryClient = new QueryClient()
export function Root(props: PropsWithChildren) {
  const store = AppStores.useUser()
  // Unfortunately, Telegram Mini Apps does not allow us to use all features of the Server Side
  // Rendering. That's why we are showing loader on the server side.
  const didMount = useDidMount()
  if (!didMount) return <Spinner />

  return (
    <WagmiProvider config={config}>
      <QueryClientProvider client={queryClient}>
        {/* <RainbowKitProvider> */}
        <ApolloProvider client={apollo(store.token)!}>
          <Others>{props.children}</Others>
        </ApolloProvider>
        {/* </RainbowKitProvider> */}
      </QueryClientProvider>
    </WagmiProvider>
  )
}

function Others(props: PropsWithChildren) {
  const { data } = useBalance({
    address: COLLECTOR as `0x${string}`,
    chainId: ChainId.Celo,
    token: getTokenAddress(TokenId.cUSD, ChainId.Celo) as `0x${string}`,
  })

  return (
    <>
      <TgSetup>
        {props.children}
        <p>{JSON.stringify(data?.value)}</p>
      </TgSetup>
      <Toaster richColors position="bottom-center" expand={false} closeButton duration={2000} />
    </>
  )
}
