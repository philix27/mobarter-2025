import React, { forwardRef, ReactNode, useCallback, useMemo } from "react";
import { ThemedView } from "../ThemedView";
import { BottomSheetBackdrop, BottomSheetModal } from "@gorhom/bottom-sheet";
import { ThemedText } from "../ThemedText";

export const AppBottomSheet = forwardRef<
  BottomSheetModal,
  { title?: string; children: ReactNode }
>((props, ref) => {
  const snapPoints = useMemo(() => ["25%", "50%", "75%"], []);
  // const bottomSheetRef = useRef<BottomSheetModal>(null);

  const renderBackDrop = useCallback(
    (props: any) => <BottomSheetBackdrop {...props} />,
    []
  );
  return (
    <ThemedView>
      <BottomSheetModal
        ref={ref}
        enablePanDownToClose={true}
        snapPoints={snapPoints}
        backdropComponent={renderBackDrop}
      >
        <ThemedView style={{ height: 200 }}>
          <ThemedText type="defaultSemiBold">{props.title}</ThemedText>
        </ThemedView>
        {props.children}
      </BottomSheetModal>
    </ThemedView>
  );
});

export function useBottomSheet(
  bottomSHeetRef: React.RefObject<BottomSheetModal>
) {
  const close = bottomSHeetRef.current?.close;
  const expand = bottomSHeetRef.current?.expand;
  const collapse = bottomSHeetRef.current?.collapse;
  const present = bottomSHeetRef.current?.present;
  const dismiss = bottomSHeetRef.current?.dismiss;
  return {
    close,
    expand,
    collapse,
    present,
    dismiss,
  };
}
