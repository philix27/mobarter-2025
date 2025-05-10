import { HeaderTabs } from "@/components/BHeaderTab";
import HeaderBar from "@/components/Header";
import { AppStores } from "@/lib";
import P2PScreen from "@/screens/p2p";
import React from "react";
import { useColor } from "@/lib/color";
import { Feather } from "@expo/vector-icons";
import { TView } from "@/components/TView";
import { useDrawer } from "@/components/DrawerContent";
import { TouchableOpacity } from "react-native";
import MiniAppsScreen from "@/screens/mini";

export default function HomeScreen() {
  const store = AppStores.useAdvert();
  const theme = useColor();
  const drawer = useDrawer();
  return (
    <>
      <HeaderBar
        title="P2P"
        headerTitle={props => (
          <HeaderTabs
            data={[
              {
                title: 'Buy',
                key: 'buy',
                isActive: store.tradeType === 'BUY',
                onPress: () => {
                  store.update({ tradeType: 'BUY' });
                },
              },
              {
                title: 'Sell',
                key: 'sell',
                isActive: store.tradeType === 'SELL',
                onPress: () => {
                  store.update({ tradeType: 'SELL' });
                },
              },
            ]}
            {...props}
          />
        )}
        headerLeft={(props: any) => {
          return (
            <TouchableOpacity
              style={{ marginLeft: 20, flexDirection: 'row', columnGap: 20 }}
            >
              <Feather
                name="menu"
                size={24}
                color={theme.text}
                onPress={() => {
                  drawer.open();
                }}
              />
            </TouchableOpacity>
          );
        }}
        headerRight={props => {
          return (
            <TView
              style={{ marginRight: 20, flexDirection: 'row', columnGap: 20 }}
            >
              <Feather name="filter" size={20} color={theme.text} />
              <Feather name="more-vertical" size={20} color={theme.text} />
            </TView>
          );
        }}
      />
      <MiniAppsScreen />
    </>
  );
}
