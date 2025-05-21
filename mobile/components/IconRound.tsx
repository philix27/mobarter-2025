import React, { ReactNode } from 'react';
import { TouchableOpacity, View, ViewStyle } from 'react-native';
import { useColor } from '@/hooks/useColor';
import { TText } from './TText';

export default function IconRound(props: {
  children: ReactNode;
  title?: string;
  onPress?: VoidFunction;
  style?: ViewStyle;
}) {
  const appColor = useColor();
  return (
    <View
      style={[
        {
          display: 'flex',
          justifyContent: 'center',
          alignItems: 'center',
        },
        props.style,
      ]}
    >
      <TouchableOpacity onPress={props.onPress}>
        <View
          style={{
            borderRadius: 25,
            height: 40,
            width: 40,
            backgroundColor: appColor.secondary,
            // padding: 20,
            display: 'flex',
            justifyContent: 'center',
            alignItems: 'center',
          }}
        >
          {props.children}
        </View>
      </TouchableOpacity>
      {props.title && (
        <TText style={{ marginTop: 5, fontSize: 12 }} type="default">
          {props.title}
        </TText>
      )}
    </View>
  );
}
