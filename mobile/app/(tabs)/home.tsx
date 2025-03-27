import HeaderBar from "@/components/Header";
import MarketScreen from "@/screens/market";
import { router } from "expo-router";
import React, { useContext, useEffect, useRef } from "react";
import { useColor } from "@/lib/color";
import {
  Feather,
  Ionicons,
  MaterialCommunityIcons,
  MaterialIcons,
} from "@expo/vector-icons";
import { TView } from "@/components/TView";
import { ThemeContext } from "@/lib/providers";
import { TouchableOpacity } from "react-native";
import { BottomSheet } from "@/components/BottomSheet";
import WalletQRCode from "@/screens/wallets/WalletQRCode";
import { RBSheetRef } from "react-native-raw-bottom-sheet";
import { AppStores } from "@/lib";
import Toast from "react-native-toast-message";
import { useDrawer } from "@/components/DrawerContent";
// import HeadDrawer from "@/components/HeadDrawer";

export default function MarketPage() {
  const appColor = useColor();
  const { toggleTheme } = useContext(ThemeContext);
  const refRBSheet = useRef<RBSheetRef>();
  const store = AppStores.useUserInfo();
  const drawer = useDrawer();

  useEffect(() => {
    if (store.email.length < 5) {
      router.push("/");
      Toast.show({
        type: "info",
        text1: "Please login",
        text2: "No user found",
      });
      return;
    }
  });
  return (
    <>
      {/* <HeaderBar title="Home" headerShown={false} /> */}
      <HeaderBar
        title="Home"
        // name="home"
        // headerShown={false}
        headerLeft={(props: any) => {
          return (
            <TouchableOpacity
              style={{ marginLeft: 20, flexDirection: "row", columnGap: 20 }}
            >
              <Feather
                name="menu"
                size={24}
                color={appColor.text}
                onPress={() => {
                  drawer.open();
                }}
              />
            </TouchableOpacity>
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
                <MaterialCommunityIcons
                  name="qrcode-scan"
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
              {/* <Ionicons
                name="notifications-outline"
                size={20}
                color={appColor.text}
              /> */}
            </TView>
          );
        }}
      />
      <MarketScreen />
      <BottomSheet ref={refRBSheet!}>
        <WalletQRCode />
      </BottomSheet>
    </>
  );
}
