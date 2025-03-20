import IconRound from "@/components/IconRound";
import { TView } from "@/components/TView";
import { useColor } from "@/lib/color";
import React, { useRef } from "react";
import { router } from "expo-router";
import { Feather, Ionicons, MaterialIcons } from "@expo/vector-icons";
import { BottomSheet } from "@/components/BottomSheet";
import { RBSheetRef } from "react-native-raw-bottom-sheet";
import SwapScreen from "../swap";
import WithdrawModal from "../withdraw";
import SendCryptoModal from "../send";

export default function QuickActions() {
  const appColor = useColor();
  const withdrawalSheet = useRef<RBSheetRef>();
  const sendCryptoSheet = useRef<RBSheetRef>();
  return (
    <>
      <TView
        style={{
          marginVertical: 10,
          display: "flex",
          flexDirection: "row",
          justifyContent: "space-around",
          alignItems: "center",
          backgroundColor: appColor.background,
        }}
      >
        <IconRound
          title="Send"
          onPress={() => {
            sendCryptoSheet.current?.open();
          }}
        >
          <Feather name="send" size={24} color={"#fff"} />
        </IconRound>
        <IconRound
          title="Withdraw"
          onPress={() => {
            withdrawalSheet.current?.open();
          }}
        >
          <MaterialIcons name="call-received" size={24} color={"#fff"} />
        </IconRound>
        <IconRound
          title="P2P"
          onPress={() => {
            router.push("/(core)/p2p-buy");
          }}
        >
          <MaterialIcons name="currency-exchange" size={24} color={"#fff"} />
        </IconRound>
        <IconRound
          title="Swap"
          onPress={() => {
            router.push("/swap/celo");
          }}
        >
          <Ionicons name="swap-horizontal" size={24} color="#fff" />
        </IconRound>
        <BottomSheet ref={withdrawalSheet!} height={350}>
          <WithdrawModal />
        </BottomSheet>
        <BottomSheet ref={sendCryptoSheet!} height={500}>
          <SendCryptoModal />
        </BottomSheet>
      </TView>
    </>
  );
}
{
  /* <ReceiveWallet /> */
}
