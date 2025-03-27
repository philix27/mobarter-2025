import { Image, SafeAreaView, StyleSheet } from "react-native";
import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
import HeaderBar from "@/components/Header";

export default function Page() {
  return (
    <SafeAreaView>
      <HeaderBar title="Orders" showBackBtn headerShown={false} backTo="Home" />
      <TView
        style={{
          flexDirection: "row",
          alignItems: "center",
          gap: 8,
        }}
      >
        <TText type="title">Welcome!</TText>
      </TView>
    </SafeAreaView>
  );
}
