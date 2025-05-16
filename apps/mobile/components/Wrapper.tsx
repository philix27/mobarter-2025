import { SafeAreaView, StyleProp, ViewStyle } from 'react-native';
import { ReactNode } from 'react';
import { TView } from './TView';
import { useColor } from '@/lib/color';
import { KeyboardAwareScrollView } from 'react-native-keyboard-aware-scroll-view';

export default function Wrapper(props: {
  children: ReactNode;
  style?: StyleProp<ViewStyle>;
}) {
  const appColor = useColor();
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
              paddingHorizontal: 20,
              paddingVertical: 20,
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
  );
}
