import { ApolloClient, ApolloProvider, InMemoryCache } from "@apollo/client";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import { Slot } from "expo-router";
import { ReactNode } from "react";
import { BatchHttpLink } from "@apollo/client/link/batch-http";
import { ThemeProvider } from "./ThemeContext";
import Toast from "react-native-toast-message";
import { AppStores } from "../zustand";

const httpLink = new BatchHttpLink({
  uri: "http://172.20.10.11:4545/graphql",
  // uri: process.env.SERVER,
  batchInterval: 10,
});

const queryClient = new QueryClient();

export function RootProviders(props: { children: ReactNode }) {
  const store = AppStores.useUserInfo();
  const apollo = new ApolloClient({
    // link: httpLink,
    uri: "http://172.20.10.11:4545/graphql",
    headers: {
      Authorization: `Bearer ${store.token}`,
    },
    // uri: process.env.SERVER,
    cache: new InMemoryCache(),
  });

  return (
    <QueryClientProvider client={queryClient}>
      <ApolloProvider client={apollo}>
        <ThemeProvider>
          <Slot />
          <Toast position="top" />
        </ThemeProvider>
      </ApolloProvider>
    </QueryClientProvider>
  );
}
