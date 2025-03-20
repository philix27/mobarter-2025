import { TextInput, StyleSheet, KeyboardTypeOptions } from "react-native";
import { TText } from "../TText";
import { IconSymbol } from "../ui/IconSymbol";
import { TView } from "../TView";
import { useColor } from "@/lib/color";

export default function InputText(props: {
  label: string;
  value?: string | undefined;
  error?: string | undefined;
  iconName?: string;
  onChangeText?: ((text: string) => void) | undefined;
  placeholder?: string | undefined;
  secureTextEntry?: boolean | undefined;
  keyboardType?: KeyboardTypeOptions | undefined;
}) {
  const appColor = useColor();
  return (
    <TView>
      <TView
        style={[styles.container, { backgroundColor: appColor.background }]}
      >
        {props.label && (
          <TText style={[styles.label]} type="default">
            {props.label}
          </TText>
        )}
        <TextInput
          style={[
            styles.input,
            {
              backgroundColor: appColor.background,
              borderColor: appColor.muted,
              color: appColor.text
            },
          ]}
          keyboardType={props.keyboardType}
          value={props.value}
          onChangeText={props.onChangeText}
          placeholder={props.placeholder}
          secureTextEntry={props.secureTextEntry}
        />
        {props.iconName && (
          <IconSymbol
            size={24}
            name={"lock"}
            color="#666"
            style={styles.icon}
          />
        )}
      </TView>
      {props.error && <TText style={styles.error}>{props.error}</TText>}
    </TView>
  );
}

const styles = StyleSheet.create({
  error: {
    color: "red",
    fontSize: 12,
    marginTop: 0,
    paddingTop: 0,
  },
  container: {
    marginTop: 10,
    width: "100%",
    // minWidth: "100%",
    marginBottom: 6,
  },
  label: {
    fontSize: 16,
    marginBottom: 5,
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
