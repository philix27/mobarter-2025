import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client';
import { QueryClient, QueryClientProvider } from '@tanstack/react-query';
import { Slot } from 'expo-router';
import { ReactNode } from 'react';
import { BatchHttpLink } from '@apollo/client/link/batch-http';
import { ThemeProvider } from './ThemeContext';
import Toast from 'react-native-toast-message';
import { AppStores } from '../zustand';
// import { WagmiProvider, createConfig, http, useBalance } from 'wagmi';
// import { base, celo, celoAlfajores } from 'wagmi/chains';

// const config = createConfig({
//   // connectors,
//   chains: [celo, celoAlfajores, base],
//   transports: {
//     [celo.id]: http(),
//     [celoAlfajores.id]: http(),
//     [base.id]: http(),
//   },
// });

const token =
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImVtYWlsIjp7ImlkIjoxLCJhZGRyZXNzIjoiMHgyMEY1MGI4ODMyZjg3MTA0ODUzZGYzRmREQTQ3RGQ0NjRmODg1YTQ5Iiwid2FsbGV0X2lkIjpudWxsLCJjaGFpblR5cGUiOiJFdGhlcmV1bSIsIm1pbmlwYXkiOnRydWUsImNyZWF0ZWRfYXQiOiIyMDI1LTA1LTA0VDEyOjQ4OjQ2Ljg2NVoiLCJ1cGRhdGVkX2F0IjoiMjAyNS0wNS0wNFQxMjo0ODo0Ni44NjVaIiwidXNlcl9pZCI6MX0sImlhdCI6MTc0NzgwMjg2MSwiZXhwIjoxNzQ3OTc1NjYxfQ.XmiPSITHR4SRXhpE4DIPpK20aD2YIwP5ayKkyYo0ciw';

const httpLink = new BatchHttpLink({
  uri: 'http://172.20.10.4:4545/graphql',
  // uri: process.env.SERVER,
  batchInterval: 10,
});

const queryClient = new QueryClient();

export function RootProviders(props: { children: ReactNode }) {
  const store = AppStores.useUserInfo();
  const apollo = new ApolloClient({
    // link: httpLink,
    uri: process.env.EXPO_PUBLIC_SERVER_GQL,
    headers: {
      Authorization: `Bearer ${token}`,
      // Authorization: `Bearer ${store.token}`,
    },
    // uri: process.env.SERVER,
    cache: new InMemoryCache(),
  });

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
  );
}
