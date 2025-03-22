import { TText, TView } from "@/components";
import Row from "@/components/Row";
import { useColor } from "@/lib/color";
import { Entypo } from "@expo/vector-icons";
import { router } from "expo-router";
import React from "react";

export default function P2PModal() {
  const theme = useColor();
  return (
    <TView>
      <TView style={{ marginBottom: 5, marginLeft: 10 }}>
        <TText type="defaultSemiBold">P2P Market</TText>
      </TView>
      <Row
        title={"SELL"}
        desc={"Find a suitable exchange rate at marketplace"}
        icon={<Entypo name="arrow-bold-up" size={24} color="#fff" />}
        onClick={() => {
          router.push("/(core)/p2p-sell");
        }}
      />
      <Row
        title={"BUY"}
        desc={"Find a suitable exchange rate at marketplace"}
        icon={<Entypo name="arrow-bold-down" size={24} color="#fff" />}
        onClick={() => {
          router.push("/(core)/p2p-buy");
        }}
      />
    </TView>
  );
}
