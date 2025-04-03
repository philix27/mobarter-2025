// import { PrivyProvider, PrivyElements } from "@privy-io/expo";
import { ReactNode } from "react";

export default function RootPrivy(props: { children: ReactNode }) {
  return props.children;
  // return (
  //   <PrivyProvider
  //     appId={process.env.EXPO_PUBLIC_PRIVY_APP_ID!}
  //     clientId={"client-WY5gGeHFve62STCwnEwuRNpZhs2nZLGHJXyyyM91Mk8By"}
  //     // clientId={process.env.EXPO_PUBLIC_PRIVY_CLIENT_ID!}
  //   >
  //     {props.children}
  //     <PrivyElements />
  //   </PrivyProvider>
  // );
}
