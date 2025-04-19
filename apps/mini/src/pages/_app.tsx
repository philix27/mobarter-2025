import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client'
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { Analytics } from '@vercel/analytics/react'
import type { AppProps } from 'next/app'
import { PropsWithChildren } from 'react'
import { Root } from 'src/Root'
import { ErrorBoundary } from 'src/components/Errors'
import { Provider } from 'src/lib/telegram'
import { useIsSsr } from 'src/lib/utils/ssr'
import 'src/styles/globals.css'
import { WagmiProvider, createConfig, http } from 'wagmi'
import { celo, celoAlfajores } from 'wagmi/chains'

const API_KEY =
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImVtYWlsIjp7ImlkIjoxLCJhZGRyZXNzIjoiMHgyMEY1MGI4ODMyZjg3MTA0ODUzZGYzRmREQTQ3RGQ0NjRmODg1YTQ5Iiwid2FsbGV0X2lkIjpudWxsLCJjaGFpblR5cGUiOiJFdGhlcmV1bSIsIm1pbmlwYXkiOnRydWUsImNyZWF0ZWRfYXQiOiIyMDI1LTA0LTA2VDE1OjIzOjU0LjI1MloiLCJ1cGRhdGVkX2F0IjoiMjAyNS0wNC0wNlQxNToyMzo1NC4yNTJaIiwidXNlcl9pZCI6MX0sImlhdCI6MTc0NDI3NjgxNCwiZXhwIjoxNzQ0MzIwMDE0fQ.J2CnU1jdmIvnZe3ZBPy4aDGW7DoTrrk28e7k5_TJ5aQ'

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
const apollo = new ApolloClient({
  // uri: process.env.BACKEND_SERVER,
  uri: 'http://localhost:4545/graphql',
  headers: {
    Authorization: `Bearer ${API_KEY}`,
  },
  cache: new InMemoryCache(),
})
const queryClient = new QueryClient()
export default function App({ Component, pageProps }: AppProps) {
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
