import { TouchableOpacity } from "react-native";
import { Text, StyleSheet } from "react-native";

export default function InputButton(props: {
  title: string;
  onPress: VoidFunction;
  variant?: "secondary" | "outline";
}) {
  return (
    <TouchableOpacity
      style={{
        ...styles.button,
        backgroundColor: props.variant === "secondary" ? "#282828" : "#007d0c",
      }}
      onPress={props.onPress}
    >
      <Text style={styles.buttonText}>{props.title}</Text>
    </TouchableOpacity>
  );
}

const styles = StyleSheet.create({
  button: {
    backgroundColor: "#007d0c",
    padding: 10,
    borderRadius: 5,
    alignItems: "center",
    marginTop: 10,
    width: "40%",
  },
  buttonText: {
    color: "#fff",
    fontSize: 16,
    fontWeight: "bold",
  },
});
