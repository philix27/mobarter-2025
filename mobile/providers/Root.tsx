import { BottomSheetModalProvider } from "@gorhom/bottom-sheet";
import { Slot } from "expo-router";
import { ReactNode } from "react";

export default function RootProviders(props: { children: ReactNode }) {
  return (
    <BottomSheetModalProvider>
    <Slot />
    </BottomSheetModalProvider>
  );
}
