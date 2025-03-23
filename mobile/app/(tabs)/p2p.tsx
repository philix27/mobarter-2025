import { HeaderTabs } from "@/components/BHeaderTab";
import HeaderBar from "@/components/Header";
import { AppStores } from "@/lib";
import P2PScreen from "@/screens/p2p";
import React, { useContext, useEffect, useRef } from "react";
import { useColor } from "@/lib/color";
import { Feather } from "@expo/vector-icons";
import { TView } from "@/components/TView";

export default function HomeScreen() {
  const store = AppStores.useP2P();
  const theme = useColor();
  return (
    <>
      <HeaderBar
        title="P2P"
        headerTitle={(props) => (
          <HeaderTabs
            data={[
              {
                title: "Buy",
                key: "buy",
                isActive: store.activeTab === "BUY",
                onPress: () => {
                  store.update({ activeTab: "BUY" });
                },
              },
              {
                title: "Sell",
                key: "sell",
                isActive: store.activeTab === "SELL",
                onPress: () => {
                  store.update({ activeTab: "SELL" });
                },
              },
            ]}
            {...props}
          />
        )}
        headerRight={(props) => {
          return (
            <TView
              style={{ marginRight: 20, flexDirection: "row", columnGap: 20 }}
            >
              <Feather name="filter" size={20} color={theme.text} />
              <Feather name="more-vertical" size={20} color={theme.text} />
            </TView>
          );
        }}
      />
      <P2PScreen />
    </>
  );
}
