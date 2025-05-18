import React, { ReactNode } from "react";
// import { QueryClient, QueryClientProvider } from "@tanstack/react-query";

// const queryClient = new QueryClient();

export default function AppProviders({ children }: { children: ReactNode }) {
  return children;
  //   return (
  //     <QueryClientProvider client={queryClient}>{children}</QueryClientProvider>
  //   );
}
