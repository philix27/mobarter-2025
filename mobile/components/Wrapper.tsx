import { SafeAreaView, ScrollView } from "react-native";
import { ReactNode } from "react";
import { TView } from "./TView";
import { TText } from "./TText";
import InputButton from "./forms/Button";
import { appColor } from "@/lib/color";
import { Link } from "expo-router";
// import { ScrollView } from "react-native-gesture-handler";

export default function Wrapper(props: { children: ReactNode }) {
  return (
    <SafeAreaView
      style={{
        backgroundColor: appColor().background,
        minHeight: "100%",
      }}
    >
      <ScrollView>
        <TView
          style={{
            height: "100%",
            display: "flex",
            alignItems: "center",
            width: "100%",
            paddingHorizontal: 20,
            minHeight: "100%",
          }}
        >
          {props.children}
        </TView>
      </ScrollView>
    </SafeAreaView>
  );
}
