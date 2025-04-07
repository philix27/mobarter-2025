import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client';
import { connectorsForWallets } from '@rainbow-me/rainbowkit';
import '@rainbow-me/rainbowkit/styles.css';
import { injectedWallet } from '@rainbow-me/rainbowkit/wallets';
import { QueryClient, QueryClientProvider } from '@tanstack/react-query';
import { Analytics } from '@vercel/analytics/react';
import type { AppProps } from 'next/app';
import { PropsWithChildren } from 'react';
import { ToastContainer, Zoom, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import { ErrorBoundary } from 'src/components/Errors';
import { useIsSsr } from 'src/lib/utils/ssr';
import 'src/styles/globals.css';
import { WagmiProvider, createConfig, http } from 'wagmi';
import { celo, celoAlfajores } from 'wagmi/chains';


const API_KEY =
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMsImVtYWlsIjp7ImlkIjozLCJhZGRyZXNzIjoiMHg0NjJFNUYyNzJCODQzMTU2MjgxMTEyNjc3OWRhNkVjYUU1MUE1QjQwIiwid2FsbGV0X2lkIjpudWxsLCJjaGFpblR5cGUiOiJFdGhlcmV1bSIsIm1pbmlwYXkiOnRydWUsImNyZWF0ZWRfYXQiOiIyMDI1LTA0LTA2VDE1OjMzOjIxLjg4M1oiLCJ1cGRhdGVkX2F0IjoiMjAyNS0wNC0wNlQxNTozMzoyMS44ODNaIiwidXNlcl9pZCI6M30sImlhdCI6MTc0NDAwNDM2NiwiZXhwIjoxNzQ0MDQ3NTY2fQ.nuT-l_rXFzKQDMYgzWDAvvnWNG2dhNpiPynwdbqlRvI'

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