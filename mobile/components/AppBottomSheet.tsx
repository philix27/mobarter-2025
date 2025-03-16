import React, {
  forwardRef,
  ReactNode,
  useCallback,
  useMemo,
  useRef,
} from "react";
import {
  BottomSheetBackdrop,
  BottomSheetModal,
  BottomSheetModalProvider,
} from "@gorhom/bottom-sheet";
import { GestureHandlerRootView } from "react-native-gesture-handler";
import { StyleSheet } from "react-native";
import { useColor } from "@/lib/color";

type Props = {
  title?: string;
  children: ReactNode;
};

type Ref = BottomSheetModal;

export const AppBottomSheet = forwardRef<Ref, Props>((props, ref) => {
  const appColor = useColor();
  const snapPoints = useMemo(() => ["25%", "50%", "75%"], []);

  const renderBackDrop = useCallback(
    (props: any) => <BottomSheetBackdrop {...props} />,
    []
  );
  return (
    <GestureHandlerRootView>
      <BottomSheetModalProvider>
        <BottomSheetModal
          ref={ref}
          index={1}
          enablePanDownToClose={true}
          snapPoints={snapPoints}
          style={[styles.sheet, { backgroundColor: appColor.card }]}
          backgroundStyle={{
            backgroundColor: appColor.background,
          }}
          handleIndicatorStyle={{ backgroundColor: appColor.cardForeground }}
          handleStyle={{
            backgroundColor: appColor.accent,
            borderTopLeftRadius: 10,
            borderTopRightRadius: 10,
          }}
          // backdropComponent={renderBackDrop}
        >
          {props.children}
        </BottomSheetModal>
      </BottomSheetModalProvider>
    </GestureHandlerRootView>
  );
});

const styles = StyleSheet.create({
  sheet: {
    borderRadius: 10,
    // zIndex: 10,
    shadowColor: "#4b4b4b",
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.23,
    shadowRadius: 2.62,

    elevation: 4,
  },
});
export function useAppBottomSheet() {
  // bottomSHeetRef: React.RefObject<BottomSheetModal>
  // const close = bottomSHeetRef.current?.close;
  const bottomSHeetRef = useRef<BottomSheetModal>(null);

  const handleExpand = useCallback(() => {
    bottomSHeetRef.current?.expand();
  }, []);
  const handleClose = useCallback(() => {
    bottomSHeetRef.current?.collapse();
  }, []);

  const handlePresent = useCallback(() => {
    bottomSHeetRef.current?.present();
  }, []);

  const handleDismiss = useCallback(() => {
    bottomSHeetRef.current?.dismiss();
  }, []);

  return {
    handleClose,
    handleExpand,
    handlePresent,
    handleDismiss,
    ref: bottomSHeetRef,
  };
}
