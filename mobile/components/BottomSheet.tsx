import React, { forwardRef, ReactNode } from "react";
import RBSheet, { RBSheetRef } from "react-native-raw-bottom-sheet";
import { useColor } from "@/lib/color";

type IProps = {
  children: ReactNode;
  height?: number;
  maxHeight?: number;
  onClose?: VoidFunction;
  ref: React.LegacyRef<RBSheetRef>;
};

/// Usage
/// const refRBSheet = useRef<RBSheetRef>();
/**
 * Usage
 *
 * ```ts
 * const refRBSheet = useRef<RBSheetRef>();
 * 
 * refRBSheet.current!.open();
 * refRBSheet.current!.close();
 *  
 * //Component
 * <BottomSheet ref={refRBSheet!} height={600}>
      <ThemedView>
        <ThemedText type="default">Hello</ThemedText>
      </ThemedView>
    </BottomSheet>
 * ```
 */
export const BottomSheet = forwardRef<any, IProps>(
  ({ maxHeight = 600, ...props }, ref) => {
    const color = useColor();
    return (
      <RBSheet
        ref={ref}
        useNativeDriver={false}
        onClose={props.onClose}
        // useNativeDriver={true}
        customStyles={{
          container: {
            borderTopRightRadius: 20,
            borderTopLeftRadius: 20,
            padding: 20,
            height: props.height,
            maxHeight: maxHeight,
            backgroundColor: color.background,
          },
          wrapper: {
            backgroundColor: "#0000005d",
            // backgroundColor: "transparent",
            // height: 500,
          },
          draggableIcon: {
            backgroundColor: "#000",
          },
        }}
        customModalProps={{
          animationType: "slide",
          statusBarTranslucent: true,
        }}
        customAvoidingViewProps={{
          enabled: false,
        }}
      >
        {props.children}
      </RBSheet>
    );
  }
);
