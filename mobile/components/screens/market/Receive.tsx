import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
import { BottomSheetView } from "@gorhom/bottom-sheet";
import React from "react";

export default function ReceiveWallet() {
  return (
    <BottomSheetView>
      <TText>Hello Wallet QR code</TText>
    </BottomSheetView>
  );
}
