import { SafeAreaView } from "react-native";
import { ReactNode } from "react";

export default function AuthWrapper(props: { children: ReactNode }) {
  return (
    <SafeAreaView
      style={{
        height: "100%",
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
      }}
    >
      {props.children}
    </SafeAreaView>
  );
}
