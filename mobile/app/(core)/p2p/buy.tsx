import { TView } from "@/components";
import HeaderBar from "@/components/Header";
import { TText } from "@/components/TText";
import { useColor } from "@/lib/color";
import { SafeAreaView } from "react-native";

export default function Diseases() {
  const appColor = useColor();
  return (
    <SafeAreaView
      style={{ height: "100%", backgroundColor: appColor.background }}
    >
      <HeaderBar title="P2P Market - Buy" showBackBtn />
      <TView
        style={{
          height: "95%",
          display: "flex",
          flexDirection: "column",
          paddingHorizontal: 8,
        }}
      >
        <TText>How far</TText>
      </TView>
    </SafeAreaView>
  );
}
