import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client'
import { ReactNode } from 'react'
import { ThemeProvider } from './ThemeContext'
import Toast from 'react-native-toast-message'
import { AppStores } from '../zustand'
import React from 'react'
import ReactQueryProvider from './Tanstack'
import { ThirdwebProvider } from 'thirdweb/react'
import ResponseProvider from './ResponseProvider'
import { env } from '../env'

// const token = process.env.EXPO_PUBLIC_SERVER_TEST_TOKEN!

export function RootProviders(props: { children: ReactNode }) {
  const store = AppStores.useUserInfo()
  const token = store.token

  const apollo = new ApolloClient({
    uri: env.BACKEND_GRAPHQL,
    headers: {
      Authorization: `Bearer ${token}`,
    },
    cache: new InMemoryCache(),
  })

  return (
    <ReactQueryProvider>
      <ThirdwebProvider>
        <ApolloProvider client={apollo}>
          {/* <WagmiProvider config={config}> */}
          <ThemeProvider>
            <ResponseProvider>
              {/* <Slot /> */}
              {props.children}
              <Toast position="top" />
            </ResponseProvider>
          </ThemeProvider>
          {/* </WagmiProvider> */}
        </ApolloProvider>
      </ThirdwebProvider>
    </ReactQueryProvider>
  )
}
