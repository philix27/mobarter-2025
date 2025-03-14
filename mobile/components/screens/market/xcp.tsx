import { SafeAreaView, StyleSheet, Text } from "react-native";
import { ThemedText } from "@/components/ThemedText";
import InputButton from "@/components/forms/Button";
import { BottomSheetView } from "@gorhom/bottom-sheet";
import { AppBottomSheet, useAppBottomSheet } from "../AppBottomSheet";
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
  const { handleDismiss, handlePresent, ref } = useAppBottomSheet();
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
      </ThemedView>

      <AppBottomSheet ref={ref}>
        <BottomSheetView>
          <Text>Awesome 🎉</Text>

          <ThemedView>
            <ThemedText type="defaultSemiBold">Hello</ThemedText>
            <ThemedText type="default" style={{ fontSize: 13 }}>
              Performance
            </ThemedText>
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
          </ThemedView>
        </BottomSheetView>
      </AppBottomSheet>
      
    </SafeAreaView>
  );
}
