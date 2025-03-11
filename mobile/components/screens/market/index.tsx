import { appColor } from "@/lib/color";
import { SafeAreaView } from "react-native";
import Balance from "./Balance";
import QuickActions from "./QuickActions";
import HeaderBar from "@/components/Header";

export default function MarketScreen() {
  return (
    <SafeAreaView
      style={{ height: "100%", backgroundColor: appColor().background }}
    >
      <HeaderBar title="Market" />
      <Balance />
      <QuickActions />
    </SafeAreaView>
  );
}
