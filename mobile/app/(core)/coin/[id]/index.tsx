import HeaderBar from "@/components/Header";
import { TText } from "@/components/TText";
import Wrapper from "@/components/Wrapper";
import { useColor } from "@/lib/color";
import { useLocalSearchParams } from "expo-router";
import { View, SafeAreaView } from "react-native";

export default function CoinInfo() {
  const appColor = useColor();
  const { id, title } = useLocalSearchParams();
  const { coinId, pageTitle } = convertParamToInt(title, id);

  return (
    <Wrapper>
      <HeaderBar title={pageTitle} />
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
    </Wrapper>
  );
}

function convertParamToInt(title: string | string[], id: string | string[]) {
  const pageTitle = title as string;
  const sgroupId = id as string;
  const coinId = parseInt(sgroupId);
  return { coinId, pageTitle };
}
