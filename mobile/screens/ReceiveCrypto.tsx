import React, { useCallback, useMemo, useRef } from "react";
import { TView } from "../components/TView";
import BottomSheet, { BottomSheetBackdrop } from "@gorhom/bottom-sheet";
import { TText } from "../components/TText";
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
    <TView>
      <BottomSheet
        enablePanDownToClose={true}
        snapPoints={snapPoints}
        backdropComponent={renderBackDrop}
      >
        <TView>
          <TText>QR code</TText>
          <TText>Wallet</TText>
        </TView>
      </BottomSheet>
    </TView>
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
