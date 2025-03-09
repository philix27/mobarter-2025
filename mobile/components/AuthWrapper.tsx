import { SafeAreaView } from "react-native";
import { ReactNode } from "react";
import { ThemedView } from "./ThemedView";
import { ThemedText } from "./ThemedText";
import InputButton from "./forms/Button";

export default function AuthWrapper(props: {
  children: ReactNode;
  bottomComp?: ReactNode;
  title: string;
  subtitle?: string;
  btnTitle: string;
  onPress: VoidFunction;
}) {
  return (
    <SafeAreaView
      style={{
        height: "100%",
        display: "flex",
        alignItems: "center",
        paddingTop: 50,
      }}
    >
      <ThemedView>
        <ThemedText type="title">{props.title}</ThemedText>
      </ThemedView>
      {props.subtitle && (
        <ThemedView>
          <ThemedText type="subtitle">{props.subtitle}</ThemedText>
        </ThemedView>
      )}
      {props.children}
      <InputButton title={props.btnTitle} onPress={props.onPress} />
      {props.bottomComp && props.bottomComp}
    </SafeAreaView>
  );
}
