import { TextInput, StyleSheet, KeyboardTypeOptions } from "react-native";
import { TView } from "../TView";
import { useColor } from "@/lib/color";
import { useState } from "react";
import { Feather } from "@expo/vector-icons";
import Label from "./Label";
import ErrMsg from "./ErrMsg";

export default function InputText(props: {
  label: string;
  value?: string | undefined;
  icon?: JSX.Element;
  error?: string | undefined;
  onChangeText?: ((text: string) => void) | undefined;
  placeholder?: string | undefined;
  secureTextEntry?: boolean | undefined;
  keyboardType?: KeyboardTypeOptions | undefined;
}) {
  const theme = useColor();
  const [HidePassword, setHidePassword] = useState(props.secureTextEntry);
  return (
    <TView>
      <TView
        style={[
          styles.container,
          { backgroundColor: theme.background, position: "relative" },
        ]}
      >
        {props.label && <Label label={props.label} />}
        {props.icon}
        {props.icon || (
          <TView style={{ position: "absolute", top: 40, left: 10, zIndex: 2 }}>
            <Feather name="eye-off" size={20} color={theme.muted} />
          </TView>
        )}
       
          <TextInput
            style={[
              styles.input,
              {
                backgroundColor: theme.background,
                borderColor: theme.muted,
                color: theme.text,
                paddingLeft: 37.5,
              },
            ]}
            keyboardType={props.keyboardType}
            value={props.value}
            onChangeText={props.onChangeText}
            placeholder={props.placeholder}
            secureTextEntry={HidePassword}
            placeholderTextColor={theme.muted}
          />

        {props.secureTextEntry && (
          <TView style={{ position: "absolute", right: 10, top: 38 }}>
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
      </TView>
      {props.error && <ErrMsg msg={props.error} />}
    </TView>
  );
}

const styles = StyleSheet.create({
  container: {
    marginTop: 10,
    width: "100%",
    // minWidth: "100%",
    marginBottom: 6,
  },
  input: {
    // height: 50,
    borderWidth: 1,
    borderRadius: 5,
    paddingHorizontal: 10,
    paddingVertical: 12,
    fontSize: 16,
    width: "100%",
    minWidth: "90%",
  },

  icon: {
    marginLeft: 10,
  },
});
