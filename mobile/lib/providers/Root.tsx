import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client'
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { Slot } from 'expo-router'
import { ReactNode } from 'react'
import { BatchHttpLink } from '@apollo/client/link/batch-http'
import { ThemeProvider } from './ThemeContext'
import Toast from 'react-native-toast-message'
import { AppStores } from '../zustand'

const token = process.env.EXPO_PUBLIC_SERVER_TEST_TOKEN!
const httpLink = new BatchHttpLink({
  // uri: 'http://172.20.10.4:4545/graphql',
  uri: process.env.EXPO_PUBLIC_SERVER_GQL,
  batchInterval: 10,
})

const queryClient = new QueryClient()
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
    // <WagmiProvider config={config}>
    <QueryClientProvider client={queryClient}>
      <ApolloProvider client={apollo}>
        <ThemeProvider>
          <Slot />
          <Toast position="top" />
        </ThemeProvider>
      </ApolloProvider>
    </QueryClientProvider>
    // </WagmiProvider>
  )
}
