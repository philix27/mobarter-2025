import { TText, TView } from "@/components";
import Row from "@/components/Row";
import { useColor } from "@/lib/color";
import { FontAwesome, MaterialIcons } from "@expo/vector-icons";
import { router } from "expo-router";
import React from "react";

export default function WithdrawModal() {
  const theme = useColor();
  return (
    <TView>
      <Row
        title={"P2P"}
        desc={"Find a suitable exchange rate at marketplace"}
        icon={
          <MaterialIcons name="currency-exchange" size={24} color={"#fff"} />
        }
        onClick={() => {
          router.push("/(core)/p2p-sell");
        }}
      />
      <Row
        title={"Direct Exchange"}
        desc={"Use our official rate"}
        icon={<FontAwesome name="bank" size={24} color={"#fff"} />}
        onClick={() => {
          router.push("/(core)/direct-exchange");
        }}
      />
    </TView>
  );
}
