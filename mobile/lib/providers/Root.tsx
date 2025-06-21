import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client'
import { Slot } from 'expo-router'
import { ReactNode } from 'react'
import { BatchHttpLink } from '@apollo/client/link/batch-http'
import { ThemeProvider } from './ThemeContext'
import Toast from 'react-native-toast-message'
import { AppStores } from '../zustand'
import React from 'react'
import ReactQueryProvider from './Tanstack'
import { ThirdwebProvider } from 'thirdweb/react'
import ResponseProvider from './ResponseProvider'

const token = process.env.EXPO_PUBLIC_SERVER_TEST_TOKEN!
const httpLink = new BatchHttpLink({
  // uri: 'http://172.20.10.4:4545/graphql',
  uri: process.env.EXPO_PUBLIC_SERVER_GQL,
  batchInterval: 10,
})

const apollo = new ApolloClient({
  // link: httpLink,
  uri: process.env.EXPO_PUBLIC_SERVER_GQL,
  headers: {
    Authorization: `Bearer ${token}`,
    // Authorization: `Bearer ${store.token}`,
  },
  cache: new InMemoryCache(),
})

export function RootProviders(props: { children: ReactNode }) {
  const store = AppStores.useUserInfo()

  return (
    <ReactQueryProvider>
      <ApolloProvider client={apollo}>
        <ThirdwebProvider>
          {/* <WagmiProvider config={config}> */}
          <ThemeProvider>
            <ResponseProvider>
              {/* <Slot /> */}
              {props.children}
              <Toast position="top" />
            </ResponseProvider>
          </ThemeProvider>
          {/* </WagmiProvider> */}
        </ThirdwebProvider>
      </ApolloProvider>
    </ReactQueryProvider>
  )
}
