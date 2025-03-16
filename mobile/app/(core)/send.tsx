import HeaderBar from "@/components/Header";
import { TText } from "@/components/TText";
import { appColor } from "@/lib/color";
import { View, SafeAreaView } from "react-native";

export default function Diseases() {
  return (
    <SafeAreaView
      style={{ height: "100%", backgroundColor: appColor().background }}
    >
      <HeaderBar title="Send" />
      <View
        style={{
          height: "95%",
          display: "flex",
          flexDirection: "column",
          paddingHorizontal: 8,
        }}
      >
        <TText>How far</TText>
      </View>
    </SafeAreaView>
  );
}
