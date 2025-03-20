import HeaderBar from "@/components/Header";
import Wrapper from "@/components/Wrapper";
import { useColor } from "@/lib/color";
import { useLocalSearchParams } from "expo-router";
import { Image } from "react-native";
import { coinsList } from "@/constants";
import { TView } from "@/components";
import QuickActions from "./QuickActions";

export default function CoinInfo() {
  const appColor = useColor();
  const { id, title } = useLocalSearchParams();
  const { coinId, pageTitle } = convertParamToInt(title, id);
  const Coin = coinsList.filter((val) => val.symbol === coinId)[0];
  return (
    <Wrapper>
      <TView
        style={{
          backgroundColor: appColor.background,
          marginTop: 40,
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          justifyContent: "center",
        }}
      >
        {Coin.image && (
          <Image
            source={Coin.image}
            style={{ height: 60, width: 60, borderRadius: 30 }}
          />
        )}
      </TView>
      <QuickActions />
    </Wrapper>
  );
}

function convertParamToInt(title: string | string[], id: string | string[]) {
  const pageTitle = title as string;
  const sgroupId = id as string;
  const coinId = sgroupId;
  return { coinId, pageTitle };
}
