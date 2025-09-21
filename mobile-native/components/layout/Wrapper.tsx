import { SafeAreaView, StyleProp, ViewStyle } from 'react-native'
import { ReactNode } from 'react'
import { TView } from '../TView'
import { useColor } from '@/hooks/useColor'
import { KeyboardAwareScrollView } from 'react-native-keyboard-aware-scroll-view'
import { device } from '@/lib'

export function Wrapper(props: { children: ReactNode; style?: StyleProp<ViewStyle> }) {
  const appColor = useColor()
  // return  props.children
  return (
    <SafeAreaView
      style={{
        backgroundColor: appColor.background,
        minHeight: '100%',
        width: '100%',
      }}
    >
      {/* <KeyboardAvoidingView
        behavior={Platform.OS === "ios" ? "padding" : "height"}
      >
        <TouchableWithoutFeedback onPress={Keyboard.dismiss}> */}
      <KeyboardAwareScrollView
        contentContainerStyle={{
          flexGrow: 1,
        }}
        showsVerticalScrollIndicator={false}
        showsHorizontalScrollIndicator={false}
        bounces={false}
      >
        <TView
          style={[
            {
              height: '100%',
              display: 'flex',
              alignItems: 'center',
              width: '100%',
              paddingHorizontal: device.isiOS ? 20 : 15,
              paddingVertical: device.isiOS ? 20 : 0,
              minHeight: '100%',
            },
            props.style,
          ]}
        >
          {props.children}
        </TView>
      </KeyboardAwareScrollView>
      {/* </TouchableWithoutFeedback> */}
      {/* </KeyboardAvoidingView> */}
    </SafeAreaView>
  )
}
