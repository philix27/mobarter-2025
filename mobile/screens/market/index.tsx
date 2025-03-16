import { SafeAreaView } from "react-native";
import { useColor } from "@/lib/color";
import Balance from "./Balance";
import QuickActions from "./QuickActions";
import AssetsTab from "./AssetsTab";
import { AppStores } from "@/lib/zustand";
import AssetsCrypto from "./Assets/AssetsCrypto";
import AssetsFiat from "./Assets/AssetsFiat";
import { TView } from "@/components/TView";

export default function MarketScreen() {
  const store = AppStores.useView();
  const appColor = useColor();
  return (
    <SafeAreaView
      style={{
        height: "100%",
        backgroundColor: appColor.background,
      }}
    >
      <TView style={{ paddingHorizontal: 20 }}>
        <Balance />
        <QuickActions />

        <AssetsTab />
        {store.activeViewAsset === "Fiat" ? <AssetsFiat /> : <AssetsCrypto />}
      </TView>
    </SafeAreaView>
  );
}
