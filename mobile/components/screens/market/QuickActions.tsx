import IconRound from "@/components/IconRound";
import { ThemedView } from "@/components/ThemedView";
import { appColor } from "@/lib/color";
import React from "react";
import { router } from "expo-router";
import { IconSymbol } from "@/components/ui/IconSymbol.ios";
import { Feather, Ionicons, MaterialIcons } from "@expo/vector-icons";

export default function QuickActions() {
  return (
    <>
      <ThemedView
        style={{
          marginVertical: 10,
          display: "flex",
          flexDirection: "row",
          justifyContent: "space-around",
          alignItems: "center",
          backgroundColor: appColor().background,
        }}
      >
        <IconRound
          title="Send"
          onPress={() => {
            router.push("/send");
          }}
        >
          <Feather name="send" size={24} color={"#fff"} />
        </IconRound>
        <IconRound
          title="Receive"
          onPress={() => {
            router.push("/receive");
          }}
        >
          <MaterialIcons name="call-received" size={24} color={"#fff"} />
        </IconRound>
        <IconRound
          title="Fx"
          onPress={() => {
            router.push("/buy");
          }}
        >
          <MaterialIcons name="currency-exchange" size={24} color={"#fff"} />
        </IconRound>
        <IconRound
          title="Swap"
          onPress={() => {
            router.push("/swap");
          }}
        >
          <Ionicons name="swap-horizontal" size={24} color="#fff" />
        </IconRound>
      </ThemedView>
    </>
  );
}
{
  /* <ReceiveWallet /> */
}
