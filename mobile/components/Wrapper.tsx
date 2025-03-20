import { SafeAreaView, ScrollView } from "react-native";
import { ReactNode } from "react";
import { TView } from "./TView";
import { useColor } from "@/lib/color";

export default function Wrapper(props: { children: ReactNode }) {
  const appColor = useColor();
  return (
    <SafeAreaView
      style={{
        backgroundColor: appColor.background,
        minHeight: "100%",
      }}
    >
      <ScrollView
        bounces={false}
        style={{ flex: 1 }}
        showsVerticalScrollIndicator={false}
        showsHorizontalScrollIndicator={false}
      >
        <TView
          style={{
            height: "100%",
            display: "flex",
            alignItems: "center",
            width: "100%",
            paddingHorizontal: 20,
            paddingVertical: 20,
            minHeight: "100%",
          }}
        >
          {props.children}
        </TView>
      </ScrollView>
    </SafeAreaView>
  );
}
