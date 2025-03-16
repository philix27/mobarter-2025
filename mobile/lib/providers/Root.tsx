import { ApolloClient, ApolloProvider, InMemoryCache } from "@apollo/client";
import { BottomSheetModalProvider } from "@gorhom/bottom-sheet";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";
import { Slot } from "expo-router";
import { ReactNode } from "react";
import { BatchHttpLink } from "@apollo/client/link/batch-http";

const httpLink = new BatchHttpLink({
  uri: "http://localhost:4545/graphql",
  // uri: process.env.SERVER,
  batchInterval: 10,
});

const queryClient = new QueryClient();
const apollo = new ApolloClient({
  // link: httpLink,
  uri: process.env.SERVER,
  cache: new InMemoryCache(),
});
export function RootProviders(props: { children: ReactNode }) {
  return (
    <QueryClientProvider client={queryClient}>
      <ApolloProvider client={apollo}>
        <BottomSheetModalProvider>
          <Slot />
        </BottomSheetModalProvider>
      </ApolloProvider>
    </QueryClientProvider>
  );
}
