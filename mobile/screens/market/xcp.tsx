import { SafeAreaView, StyleSheet, Text } from "react-native";
import { TText } from "@/components/TText";
import InputButton from "@/components/forms/Button";
import { BottomSheetView } from "@gorhom/bottom-sheet";
import {
  AppBottomSheet,
  useAppBottomSheet,
} from "../../components/AppBottomSheet";
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
  const { handleDismiss, handlePresent, ref } = useAppBottomSheet();
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

        <InputButton
          title={"Open"}
          onPress={() => {
            handlePresent();
          }}
        />
        <InputButton
          title={"Close"}
          onPress={() => {
            handleDismiss();
          }}
        />

        <AssetsTab />
        {store.activeViewAsset === "Fiat" ? <AssetsFiat /> : <AssetsCrypto />}
      </TView>

      <AppBottomSheet ref={ref}>
        <BottomSheetView>
          <Text>Awesome 🎉</Text>

          <TView>
            <TText type="defaultSemiBold">Hello</TText>
            <TText type="default" style={{ fontSize: 13 }}>
              Performance
            </TText>
            <InputButton
              title={"Open"}
              onPress={() => {
                handlePresent();
              }}
            />
            <InputButton
              title={"Close"}
              onPress={() => {
                handleDismiss();
              }}
            />
          </TView>
        </BottomSheetView>
      </AppBottomSheet>
    </SafeAreaView>
  );
}
