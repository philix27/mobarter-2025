import React, { forwardRef, ReactNode } from 'react';
import RBSheet, { RBSheetRef } from 'react-native-raw-bottom-sheet';
import { useColor } from '@/lib/color';
import { TText, TView } from '@/components';

type IProps = {
  children: ReactNode;
  height?: number;
  maxHeight?: number;
  minHeight?: number;
  title?: string;
  onClose?: VoidFunction;
  ref: React.LegacyRef<RBSheetRef>;
};

export const BottomSheet = forwardRef<any, IProps>(
  ({ minHeight = 600, maxHeight, ...props }, ref) => {
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
            padding: 0,
            height: props.height,
            // maxHeight: maxHeight,
            // minHeight: minHeight,
            backgroundColor: color.background,
          },
          wrapper: {
            backgroundColor: '#00000075',
            // backgroundColor: "transparent",
          },
          draggableIcon: {
            backgroundColor: '#000',
          },
        }}
        customModalProps={{
          animationType: 'slide',
          statusBarTranslucent: true,
        }}
        customAvoidingViewProps={{
          enabled: false,
        }}
      >
        <TView
          style={{
            margin: 0,
            paddingHorizontal: 10,
            paddingVertical: 8,
            flexDirection: 'row',
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'space-between',
          }}
        >
          <TView style={{ margin: 0, padding: 0 }}>
            <TText type="defaultSemiBold" onPress={props.onClose}>
              close
            </TText>
          </TView>
          {props.title && (
            <TView style={{ margin: 0, padding: 0 }}>
              <TText type="defaultSemiBold">{props.title}</TText>
            </TView>
          )}
          <TView style={{ margin: 0, padding: 0 }}>
            <TText type="defaultSemiBold">more</TText>
          </TView>
        </TView>

        {props.children}
      </RBSheet>
    );
  },
);
