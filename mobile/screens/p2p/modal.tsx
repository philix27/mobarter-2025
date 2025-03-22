import { TView } from "@/components";
import Row from "@/components/Row";
import { useColor } from "@/lib/color";
import { Entypo } from "@expo/vector-icons";
import { router } from "expo-router";
import React from "react";

export default function P2PModal() {
  const theme = useColor();
  return (
    <TView>
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
      <Row
        title={"Create Ad"}
        desc={"Create an advert as a p2p agent"}
        icon={<Entypo name="arrow-bold-down" size={24} color="#fff" />}
        onClick={() => {
          router.push("/(core)/p2p-buy");
        }}
      />
      <Row
        title={"Manage Ad"}
        desc={"Manage all adverts"}
        icon={<Entypo name="arrow-bold-down" size={24} color="#fff" />}
        onClick={() => {
          router.push("/(core)/p2p-buy");
        }}
      />
      <TView style={{ height: 50 }} />
    </TView>
  );
}
