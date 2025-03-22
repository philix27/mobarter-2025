import IconRound from "@/components/IconRound";
import { TView } from "@/components/TView";
import { useColor } from "@/lib/color";
import React, { useRef } from "react";
import { router } from "expo-router";
import { Feather, Ionicons, MaterialIcons } from "@expo/vector-icons";
import { BottomSheet } from "@/components/BottomSheet";
import { RBSheetRef } from "react-native-raw-bottom-sheet";
import WithdrawModal from "../withdraw";
import SendCryptoModal from "../send";
import P2PModal from "../p2p/modal";

export default function QuickActions() {
  const appColor = useColor();
  const withdrawalSheet = useRef<RBSheetRef>();
  const sendCryptoSheet = useRef<RBSheetRef>();
  const p2pSheet = useRef<RBSheetRef>();
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
            p2pSheet.current?.open();
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
        <BottomSheet
          ref={withdrawalSheet!}
          height={350}
          title="Choose withdrawal method"
        >
          <WithdrawModal />
        </BottomSheet>
        <BottomSheet
          ref={sendCryptoSheet!}
          height={500}
          title="Choose withdrawal method"
        >
          <SendCryptoModal />
        </BottomSheet>
        <BottomSheet ref={p2pSheet!} title="P2P Market">
          <P2PModal />
        </BottomSheet>
      </TView>
    </>
  );
}
{
  /* <ReceiveWallet /> */
}
