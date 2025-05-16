import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client'
import { Analytics } from '@vercel/analytics/react'
import type { AppProps } from 'next/app'
import { PropsWithChildren } from 'react'
import { Root } from 'src/Root'
import { ErrorBoundary } from 'src/components/Errors'
import { PreventZoom } from 'src/lib/telegram'
import { useIsSsr } from 'src/lib/utils/ssr'
import { AppStores } from 'src/lib/zustand'
import 'src/styles/globals.css'

function SafeHydrate({ children }: PropsWithChildren<any>) {
  // Disable app SSR for now as it's not needed and
  // complicates redux and wagmi integration
  const isSsr = useIsSsr()
  if (isSsr) {
    return <div></div>
  }
  return children
}

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

export default function App({ Component, pageProps }: AppProps) {
  const store = AppStores.useUser()

  return (
    <ErrorBoundary>
      <SafeHydrate>
        <ApolloProvider client={apollo(store.token)!}>
          <Root>
            <PreventZoom>
              <Component {...pageProps} />
            </PreventZoom>
          </Root>
        </ApolloProvider>
        {process.env.NODE_ENV !== 'development' && <Analytics />}
      </SafeHydrate>
    </ErrorBoundary>
  )
}
