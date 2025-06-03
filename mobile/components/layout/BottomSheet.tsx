import React, { forwardRef, ReactNode, useRef } from 'react'
import RBSheet, { RBSheetRef } from 'react-native-raw-bottom-sheet'
import { useColor } from '@/hooks/useColor'

import { TText, TView } from '../ui'
import { ViewStyle } from 'react-native'

type IProps = {
  children: ReactNode
  style?: ViewStyle
  height?: number
  maxHeight?: number
  minHeight?: number
  title?: string
  onClose?: VoidFunction
  ref: React.LegacyRef<RBSheetRef>
}

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
export const BottomSheet = forwardRef<any, IProps>(({ maxHeight = 700, ...props }, ref) => {
  const color = useColor()
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
          ...props.style,
        },
        wrapper: {
          backgroundColor: '#00000075',
          // backgroundColor: "transparent",
          // height: 500,
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
      {props.title && (
        <TView
          style={{
            marginBottom: 10,
            paddingBottom: 10,
            borderColor: color.muted,
            borderBottomWidth: 0.5,
          }}
        >
          <TText style={{ fontSize: 18, fontWeight: '700' }}>{props.title}</TText>
        </TView>
      )}
      <TView
        style={{
          paddingBottom: 50,
          width: '100%',
          rowGap: 1,
        }}
      >
        {props.children}
      </TView>
    </RBSheet>
  )
})

function Row(params: { text1: string; text2: string }) {
  const color = useColor()
  return (
    <TView
      style={{
        width: '100%',
        flexDirection: 'row',
        alignItems: 'center',
        justifyContent: 'space-between',
        marginBottom: 15,
      }}
    >
      <TText style={{ color: color.muted }}>{params.text1}</TText>
      <TText style={{ fontStyle: 'normal', fontWeight: '700' }}>{params.text2}</TText>
    </TView>
  )
}

export const BtmSheet = { Row, Modal: BottomSheet, useRef: () => useRef<RBSheetRef>(null) }
