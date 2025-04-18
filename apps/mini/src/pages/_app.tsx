import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client'
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { Analytics } from '@vercel/analytics/react'
import type { AppProps } from 'next/app'
import { PropsWithChildren } from 'react'
import { Root } from 'src/Root'
import { ErrorBoundary } from 'src/components/Errors'
import { Provider } from 'src/lib/telegram'
import { useIsSsr } from 'src/lib/utils/ssr'
import { AppStores } from 'src/lib/zustand'
import 'src/styles/globals.css'
import { WagmiProvider, createConfig, http } from 'wagmi'
import { celo, celoAlfajores } from 'wagmi/chains'

const config = createConfig({
  chains: [celo, celoAlfajores],
  transports: {
    [celo.id]: http(),
    [celoAlfajores.id]: http(),
  },
})

function SafeHydrate({ children }: PropsWithChildren<any>) {
  // Disable app SSR for now as it's not needed and
  // complicates redux and wagmi integration
  const isSsr = useIsSsr()
  if (isSsr) {
    return <div></div>
  } else {
    return children
  }
}

const queryClient = new QueryClient()
export default function App({ Component, pageProps }: AppProps) {
const store = AppStores.useUser()
  const apollo = new ApolloClient({
  uri: process.env.NEXT_PUBLIC_BACKEND_SERVER,
  headers: {
    Authorization: `Bearer ${store.token}`,
  },
  cache: new InMemoryCache(),
})
  return (
    <ErrorBoundary>
      <WagmiProvider config={config}>
        <SafeHydrate>
          <QueryClientProvider client={queryClient}>
            {/* <RainbowKitProvider> */}
            <ApolloProvider client={apollo}>
              <Provider>
                <Root>
                  <Component {...pageProps} />
                </Root>
              </Provider>
            </ApolloProvider>
            {/* </RainbowKitProvider> */}
          </QueryClientProvider>
        </SafeHydrate>
        <Analytics />
      </WagmiProvider>
    </ErrorBoundary>
  )
}
