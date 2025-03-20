import { Tabs } from "expo-router";
import React from "react";
import { AppTabBar } from "@/components/BottomTabBar";

export default function TabLayout() {
  return (
    <Tabs tabBar={(props) => <AppTabBar {...props} />}>
      <Tabs.Screen name="market" />
      <Tabs.Screen name="services" />
    </Tabs>
  );
}
