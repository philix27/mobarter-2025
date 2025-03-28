import Wrapper from "@/components/Wrapper";
import { AppStores } from "@/lib";
import React from "react";

import { Screen } from "./Screen";
import { dummyAdsData } from "./dummyData";

export default function P2PScreen() {
  const store = AppStores.useAdvert();
  return (
    <Wrapper>
      {store.tradeType === "BUY" ? (
        <Screen type={"BUY"} data={dummyAdsData} />
      ) : (
        <Screen type={"SELL"} data={dummyAdsData} />
      )}
    </Wrapper>
  );
}
