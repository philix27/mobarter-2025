import {
  TextInput,
  StyleSheet,
  KeyboardTypeOptions,
  TouchableOpacity,
  ViewStyle,
} from 'react-native';
import { TView } from '../TView';
import { useColor } from '@/lib/color';
import { JSX, useState } from 'react';
import { Feather } from '@expo/vector-icons';
import Label from './Label';
import ErrMsg from './ErrMsg';
import { TText } from '../TText';

export default function InputText(props: {
  label?: string;
  leadingText?: string;
  style?: ViewStyle;
  value?: string | undefined;
  icon?: JSX.Element;
  trailingIcon?: JSX.Element;
  onTrailingIconPress?: VoidFunction;
  error?: string | undefined;
  onChangeText?: ((text: string) => void) | undefined;
  placeholder?: string | undefined;
  secureTextEntry?: boolean | undefined;
  keyboardType?: KeyboardTypeOptions | undefined;
}) {
  const theme = useColor();
  const [HidePassword, setHidePassword] = useState(props.secureTextEntry);
  const [onFocus, setFocus] = useState(false);
  return (
    <>
      <TView
        style={[
          styles.container,
          {
            backgroundColor: theme.background,
            position: 'relative',
            // marginTop: 10,
          },
          props.style,
        ]}
      >
        {props.label && <Label label={props.label} />}
        <TView
          style={{
            flexDirection: 'row',
            alignItems: 'center',
            backgroundColor: theme.card,
            borderColor: onFocus ? theme.muted : theme.background,
            borderWidth: 1,
            borderRadius: 5,
          }}
        >
          {props.leadingText && (
            <TView style={{ backgroundColor: theme.card, paddingLeft: 8 }}>
              <TText>{props.leadingText}</TText>
            </TView>
          )}

          <TextInput
            style={[
              styles.input,
              {
                backgroundColor: theme.card,

                color: theme.text,
                // paddingLeft: 37.5,
              },
            ]}
            keyboardType={props.keyboardType}
            value={props.value}
            onChangeText={props.onChangeText}
            placeholder={props.placeholder}
            secureTextEntry={HidePassword}
            placeholderTextColor={theme.muted}
            onFocus={() => setFocus(true)}
            onBlur={() => setFocus(false)}
          />
        </TView>

        {props.secureTextEntry && (
          <TView style={{ position: 'absolute', right: 10, top: 38 }}>
            {HidePassword ? (
              <Feather
                name="eye-off"
                size={20}
                color={theme.muted}
                onPress={() => setHidePassword(false)}
              />
            ) : (
              <Feather
                name="eye"
                size={20}
                color={theme.muted}
                onPress={() => setHidePassword(true)}
              />
            )}
          </TView>
        )}

        {props.trailingIcon && !onFocus && (
          <TouchableOpacity
            style={{
              position: 'absolute',
              right: 14,
              top: 40,
              backgroundColor: theme.background,
            }}
            onPress={props.onTrailingIconPress}
          >
            {props.trailingIcon}
          </TouchableOpacity>
        )}
      </TView>
      {props.error && <ErrMsg msg={props.error} />}
    </>
  );
}

const styles = StyleSheet.create({
  container: {
    // marginTop: 10,
    width: '100%',
    // minWidth: "100%",
    marginBottom: 6,
  },
  input: {
    // height: 50,
    paddingHorizontal: 10,
    paddingVertical: 12,
    fontSize: 16,
    borderRadius: 5,
    // width: '100%',
    // minWidth: '90%',
  },

  icon: {
    marginLeft: 10,
  },
});
