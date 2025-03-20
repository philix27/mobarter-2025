import HeaderBar from "@/components/Header";
import MarketScreen from "@/screens/market";
import { router } from "expo-router";
import React, { useContext, useRef } from "react";
import { useColor } from "@/lib/color";
import {
  Ionicons,
  MaterialCommunityIcons,
  MaterialIcons,
} from "@expo/vector-icons";
import { TView } from "@/components/TView";
import { ThemeContext } from "@/lib/providers";
import { TouchableOpacity } from "react-native";
import { BottomSheet } from "@/components/BottomSheet";
import WalletQRCode from "@/screens/market/WalletQRCode";
import { RBSheetRef } from "react-native-raw-bottom-sheet";

export default function MarketPage() {
  const appColor = useColor();
  const { toggleTheme } = useContext(ThemeContext);
  const refRBSheet = useRef<RBSheetRef>();

  return (
    <>
      <HeaderBar
        title="Market"
        headerLeft={(props: any) => {
          return (
            <TView
              style={{ marginLeft: 20, flexDirection: "row", columnGap: 20 }}
            >
              <MaterialCommunityIcons
                name="account"
                size={20}
                color={appColor.text}
                onPress={() => {
                  router.push("/(core)/settings");
                }}
              />
            </TView>
          );
        }}
        headerRight={(props) => {
          return (
            <TView
              style={{ marginRight: 20, flexDirection: "row", columnGap: 20 }}
            >
              <TouchableOpacity
                onPress={() => {
                  refRBSheet.current!.open();
                }}
              >
                <Ionicons
                  name="wallet-outline"
                  size={20}
                  color={appColor.text}
                />
              </TouchableOpacity>
              <TouchableOpacity
                onPress={() => {
                  toggleTheme();
                }}
              >
                <MaterialIcons
                  name="dark-mode"
                  size={20}
                  color={appColor.text}
                />
              </TouchableOpacity>
              <Ionicons
                name="notifications-outline"
                size={20}
                color={appColor.text}
              />
            </TView>
          );
        }}
      />
      <MarketScreen />
      <BottomSheet ref={refRBSheet!} >
        <WalletQRCode />
      </BottomSheet>
    </>
  );
}
