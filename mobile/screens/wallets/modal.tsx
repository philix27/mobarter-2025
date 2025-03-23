import { TView } from "@/components";
import Row from "@/components/Row";
import { useColor } from "@/lib/color";
import { Entypo, Ionicons } from "@expo/vector-icons";
import { router } from "expo-router";
import React from "react";

export default function WalletModal() {
  const theme = useColor();
  return (
    <TView>
      <Row
        title={"Ethereum"}
        desc={"0x20F50b8832f87104853df3FdDA47Dd464f885a49"}
        icon={<Ionicons name="wallet-outline" size={20} color={"#fff"} />}
      />
      <Row
        title={"Solana"}
        desc={"0x20F50b8832f87104853df3FdDA47Dd464f885a49"}
        icon={<Ionicons name="wallet-outline" size={20} color={"#fff"} />}
      />
      <Row
        title={"Bitcoin"}
        desc={"0x20F50b8832f87104853df3FdDA47Dd464f885a49"}
        icon={<Ionicons name="wallet-outline" size={20} color={"#fff"} />}
      />
      <TView style={{ height: 50 }} />
    </TView>
  );
}
