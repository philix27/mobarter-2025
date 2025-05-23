import {
  TextInput,
  StyleSheet,
  KeyboardTypeOptions,
  TouchableOpacity,
  ViewStyle,
} from 'react-native'
import { TView } from '../ui/TView'
import { useColor } from '@/hooks/useColor'
import { JSX, useState } from 'react'
import { Feather } from '@expo/vector-icons'

import ErrMsg from './ErrMsg'
import { TText } from '../ui/TText'
import { Label } from './Label'

export function InputText(props: {
  label?: string
  leadingText?: string
  desc?: string
  style?: ViewStyle
  value?: string | undefined
  icon?: JSX.Element
  trailingIcon?: JSX.Element
  onTrailingIconPress?: VoidFunction
  error?: string | undefined
  onChangeText?: ((text: string) => void) | undefined
  placeholder?: string | undefined
  secureTextEntry?: boolean | undefined
  keyboardType?: KeyboardTypeOptions | undefined
}) {
  const theme = useColor()
  const [HidePassword, setHidePassword] = useState(props.secureTextEntry)
  const [onFocus, setFocus] = useState(false)
  return (
    <>
      <TView
        style={[
          styles.container,
          {
            // backgroundColor: theme.primary,
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
            <TView
              style={{
                backgroundColor: theme.card,
                paddingLeft: 8,
                paddingRight: 0,
              }}
            >
              <TText style={{ fontSize: 16, color: theme.muted }}>{props.leadingText}</TText>
            </TView>
          )}

          <TextInput
            style={[
              styles.input,
              {
                backgroundColor: theme.card,
                color: theme.text,
                paddingLeft: props.leadingText ? 4 : 10,
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

        {props.error && <ErrMsg msg={props.error} />}
      </TView>
      {/* {props.desc && <ErrMsg msg={props.desc} />} */}
    </>
  )
}

const styles = StyleSheet.create({
  container: {
    // marginTop: 10,
    width: '100%',
    // minWidth: "100%",
    marginBottom: 0,
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
})
