import Wrapper from "@/components/Wrapper";
import { AppStores } from "@/lib";
import React from "react";
import ScreenBuy from "./ScreenBuy";
import ScreenSell from "./ScreenSell";

export default function P2PScreen() {
  const store = AppStores.useP2P();
  return (
    <Wrapper>
      {store.activeTab === "BUY" ? <ScreenBuy /> : <ScreenSell />}
    </Wrapper>
  );
}
