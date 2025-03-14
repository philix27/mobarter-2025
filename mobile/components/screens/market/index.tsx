import { SafeAreaView } from "react-native";
import { appColor } from "@/lib/color";
import Balance from "./Balance";
import QuickActions from "./QuickActions";
import AssetsTab from "./AssetsTab";
import { AppStores } from "@/lib/zustand";
import AssetsCrypto from "./Assets/AssetsCrypto";
import AssetsFiat from "./Assets/AssetsFiat";
import { ThemedView } from "@/components/ThemedView";

export default function MarketScreen() {
  const store = AppStores.useView();
  return (
    <SafeAreaView
      style={{
        height: "100%",
        backgroundColor: appColor().background,
      }}
    >
      <ThemedView style={{ paddingHorizontal: 20 }}>
        <Balance />
        <QuickActions />

        <AssetsTab />
        {store.activeViewAsset === "Fiat" ? <AssetsFiat /> : <AssetsCrypto />}
      </ThemedView>
    </SafeAreaView>
  );
}
