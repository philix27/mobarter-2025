import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client'
import { connectorsForWallets } from '@rainbow-me/rainbowkit'
import '@rainbow-me/rainbowkit/styles.css'
import { injectedWallet } from '@rainbow-me/rainbowkit/wallets'
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { Analytics } from '@vercel/analytics/react'
import type { AppProps } from 'next/app'
import { PropsWithChildren } from 'react'
import { ToastContainer, Zoom, toast } from 'react-toastify'
import 'react-toastify/dist/ReactToastify.css'
import { ErrorBoundary } from 'src/components/Errors'
import { useIsSsr } from 'src/lib/utils/ssr'
import 'src/styles/globals.css'
import { WagmiProvider, createConfig, http } from 'wagmi'
import { celo, celoAlfajores } from 'wagmi/chains'

const token = `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImVtYWlsIjp7ImlkIjoxLCJhZGRyZXNzIjoiMHgyMEY1MGI4ODMyZjg3MTA0ODUzZGYzRmREQTQ3RGQ0NjRmODg1YTQ5Iiwid2FsbGV0X2lkIjpudWxsLCJjaGFpblR5cGUiOiJFdGhlcmV1bSIsIm1pbmlwYXkiOnRydWUsImNyZWF0ZWRfYXQiOiIyMDI1LTA0LTA0VDA2OjE1OjEzLjk4N1oiLCJ1cGRhdGVkX2F0IjoiMjAyNS0wNC0wNFQwNjoxNToxMy45ODdaIiwidXNlcl9pZCI6MX0sImlhdCI6MTc0Mzg1NjIzMCwiZXhwIjoxNzQzODk5NDMwfQ.Y_AOEZsogMP8kwssE-z-AINq3ZDEUR0LGY6dk39wLjk`

const connectors = connectorsForWallets(
  [
    {
      groupName: 'Recommended',
      wallets: [injectedWallet],
    },
  ],
  {
    appName: 'Celo Composer',
    projectId: process.env.WC_PROJECT_ID ?? '044601f65212332475a09bc14ceb3c34',
  }
)

const config = createConfig({
  connectors,
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
  // link: httpLink,
  uri: 'http://localhost:4545/graphql',
  headers: {
    Authorization: `Bearer ${token}`,
  },
  // uri: process.env.SERVER,
  cache: new InMemoryCache(),
})
const queryClient = new QueryClient()
export default function App({ Component, pageProps }: AppProps) {
  return (
    <WagmiProvider config={config}>
      <ErrorBoundary>
        <SafeHydrate>
          <QueryClientProvider client={queryClient}>
            {/* <RainbowKitProvider> */}
            <ApolloProvider client={apollo}>
              <Component {...pageProps} />
              <ToastContainer transition={Zoom} position={toast.POSITION.BOTTOM_RIGHT} limit={2} />
            </ApolloProvider>
            {/* </RainbowKitProvider> */}
          </QueryClientProvider>
        </SafeHydrate>
        <Analytics />
      </ErrorBoundary>
    </WagmiProvider>
  )
}
