import { appColor } from "@/lib/color";
import { SafeAreaView } from "react-native";
import Balance from "./Balance";
import QuickActions from "./QuickActions";
import AssetsTab from "./AssetsTab";

export default function MarketScreen() {
  return (
    <SafeAreaView
      style={{ height: "100%", backgroundColor: appColor().background }}
    >
      <Balance />
      <QuickActions />
      <AssetsTab />
    </SafeAreaView>
  );
}
