import { ThemedText } from "@/components/ThemedText";
import { ThemedView } from "@/components/ThemedView";
import { BottomSheetView } from "@gorhom/bottom-sheet";
import React from "react";

export default function ReceiveWallet() {
  return (
    <BottomSheetView>
      <ThemedText>Hello Wallet QR code</ThemedText>
    </BottomSheetView>
  );
}
