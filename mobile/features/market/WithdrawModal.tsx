import Row from "@/components/Row";
import { TView } from "@/components/TView";
import { useColor } from "@/lib/color";
import { AntDesign } from "@expo/vector-icons";
import { router } from "expo-router";
import React from "react";

export default function WithdrawModal() {
  const theme = useColor();
  return (
    <TView>
      <Row
        title={"Sell"}
        desc={"Fiat currency directly to your bank account"}
        icon={<AntDesign name="arrowup" size={24} color="#fff" />}
        onClick={() => {
          // router.push("/(tabs)/p2p");
        }}
      />
      <Row
        title={"Buy"}
        desc={"Buy cryptocurrency"}
        icon={<AntDesign name="arrowdown" size={24} color="#fff" />}
        onClick={() => {
          // router.push("/(core)/direct-exchange");
        }}
      />
    </TView>
  );
}
