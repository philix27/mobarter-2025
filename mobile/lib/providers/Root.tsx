import { ApolloClient, ApolloProvider, InMemoryCache } from "@apollo/client";
import { BottomSheetModalProvider } from "@gorhom/bottom-sheet";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import { Slot } from "expo-router";
import { ReactNode } from "react";
import { BatchHttpLink } from "@apollo/client/link/batch-http";
import { ThemeProvider } from "./ThemeContext";

const httpLink = new BatchHttpLink({
  uri: "http://172.20.10.11:4545/graphql",
  // uri: process.env.SERVER,
  batchInterval: 10,
});

const queryClient = new QueryClient();
const apollo = new ApolloClient({
  // link: httpLink,
  uri: "http://172.20.10.11:4545/graphql",
  // uri: process.env.SERVER,
  cache: new InMemoryCache(),
});
export function RootProviders(props: { children: ReactNode }) {
  return (
    <QueryClientProvider client={queryClient}>
      <ApolloProvider client={apollo}>
        <ThemeProvider>
          <BottomSheetModalProvider>
            <Slot />
          </BottomSheetModalProvider>
        </ThemeProvider>
      </ApolloProvider>
    </QueryClientProvider>
  );
}
