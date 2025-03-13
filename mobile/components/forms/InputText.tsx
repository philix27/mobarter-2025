import { TextInput, StyleSheet, KeyboardTypeOptions } from "react-native";
import { ThemedText } from "../ThemedText";
import { IconSymbol } from "../ui/IconSymbol";
import { ThemedView } from "../ThemedView";
import { appColor } from "@/lib/color";

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
  return (
    <ThemedView>
      <ThemedView style={styles.container}>
        {props.label && (
          <ThemedText style={styles.label} type="default">
            {props.label}
          </ThemedText>
        )}
        <TextInput
          style={styles.input}
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
      </ThemedView>
      {props.error && (
        <ThemedText style={styles.error}>{props.error}</ThemedText>
      )}
    </ThemedView>
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
    backgroundColor: appColor().background,
    marginBottom: 6,
  },
  label: {
    fontSize: 16,
    marginBottom: 5,
    backgroundColor: appColor().background,
  },
  input: {
    // height: 50,
    borderWidth: 1,
    borderColor: appColor().muted,
    borderRadius: 5,
    paddingHorizontal: 10,
    paddingVertical: 12,
    fontSize: 16,
    backgroundColor: appColor().background,
    color: appColor().text,
    width: "100%",
    minWidth: "90%",
  },

  icon: {
    marginLeft: 10,
  },
});
