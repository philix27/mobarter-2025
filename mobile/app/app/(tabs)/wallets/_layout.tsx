import { Tabs } from "expo-router";
import React from "react";
import { appColor } from "@/lib/color";

import {
  createMaterialTopTabNavigator,
  MaterialTopTabNavigationOptions,
  MaterialTopTabNavigationEventMap,
} from "@react-navigation/material-top-tabs";
import { withLayoutContext } from "expo-router";
import { ParamListBase, TabNavigationState } from "@react-navigation/native";

const { Navigator } = createMaterialTopTabNavigator();
export const MaterialTopTabs = withLayoutContext<
  MaterialTopTabNavigationOptions,
  typeof Navigator,
  TabNavigationState<ParamListBase>,
  MaterialTopTabNavigationEventMap
>(Navigator);

export default function TabLayout() {
  return (
    <MaterialTopTabs
      screenOptions={{
        tabBarActiveTintColor: appColor().foreground,
        tabBarInactiveTintColor: appColor().muted,
        tabBarIndicatorStyle: {
          backgroundColor: appColor().primary,
        },
        tabBarLabelStyle: {
          textTransform: "capitalize",
          color: appColor().muted,
        },
      }}
    >
      <Tabs.Screen
        name="(tabs)/crypto"
        options={{
          title: "Crypto",
        }}
      />

      <MaterialTopTabs.Screen
        name="(tabs)/fiat"
        options={{
          title: "Fiat",
        }}
      />
    </MaterialTopTabs>
  );
}
