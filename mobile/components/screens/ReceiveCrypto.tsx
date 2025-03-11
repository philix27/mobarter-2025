import React, { useCallback, useMemo, useRef } from "react";
import { ThemedView } from "../ThemedView";
import BottomSheet, { BottomSheetBackdrop } from "@gorhom/bottom-sheet";
import { ThemedText } from "../ThemedText";
import { BottomSheetMethods } from "@gorhom/bottom-sheet/lib/typescript/types";

export default function ReceiveCryptoView() {
  const snapPoints = useMemo(() => ["25%", "50%", "75%"], []);
  const bottomSheetRef = useRef<BottomSheet>(null);

  const { close, expand, collapse } = useBottomSheet(bottomSheetRef);

  const renderBackDrop = useCallback(
    (props: any) => <BottomSheetBackdrop {...props} />,
    []
  );
  return (
    <ThemedView>
      <BottomSheet
        enablePanDownToClose={true}
        snapPoints={snapPoints}
        backdropComponent={renderBackDrop}
      >
        <ThemedView>
          <ThemedText>QR code</ThemedText>
          <ThemedText>Wallet</ThemedText>
        </ThemedView>
      </BottomSheet>
    </ThemedView>
  );
}

function useBottomSheet(bottomSHeetRef: React.RefObject<BottomSheetMethods>) {
  const close = bottomSHeetRef.current?.close();
  const expand = bottomSHeetRef.current?.expand();
  const collapse = bottomSHeetRef.current?.collapse();
  return {
    close,
    expand,
    collapse,
  };
}
