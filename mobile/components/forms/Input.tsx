import { View, TextInput, StyleSheet } from "react-native";
import { ThemedText } from "../ThemedText";

export function InputField(props: {
  label: string;
  value: string;
  onChangeText: (e: string) => void;
  placeholder: string;
  secureTextEntry: boolean;
}) {
  return (
    <View style={styles.container}>
      {props.label && (
        <ThemedText style={styles.label}>{props.label}</ThemedText>
      )}
      <TextInput
        style={styles.input}
        value={props.value}
        onChangeText={props.onChangeText}
        placeholder={props.placeholder}
        secureTextEntry={props.secureTextEntry}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    marginVertical: 10,
  },
  label: {
    fontSize: 16,
    fontWeight: "bold",
    marginBottom: 5,
  },
  input: {
    height: 40,
    borderWidth: 1,
    borderColor: "#ccc",
    borderRadius: 5,
    paddingHorizontal: 10,
  },
  button: {
    backgroundColor: "#007BFF",
    padding: 10,
    borderRadius: 5,
    alignItems: "center",
    marginTop: 10,
  },
  buttonText: {
    color: "#fff",
    fontSize: 16,
    fontWeight: "bold",
  },
});
