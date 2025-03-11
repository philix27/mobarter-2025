import { Tabs } from "expo-router";
import React from "react";
import { Platform } from "react-native";
import { HapticTab } from "@/components/HapticTab";
import { IconSymbol } from "@/components/ui/IconSymbol";
import TabBarBackground from "@/components/ui/TabBarBackground.ios";
import { appColor } from "@/lib/color";

export default function TabLayout() {
  return (
    <Tabs
      screenOptions={{
        tabBarActiveTintColor: appColor().primary,
        tabBarButton: HapticTab,
        tabBarBackground: TabBarBackground,
        headerBackButtonDisplayMode: "minimal",
        tabBarActiveBackgroundColor: appColor().background,
        tabBarInactiveBackgroundColor: appColor().background,
        headerTitleStyle: {
          color: appColor().muted,
        },
        // headerBackgroundContainerStyle: {
        //   backgroundColor: appColor().card,
        // },
        headerShadowVisible: false,
        tabBarStyle: Platform.select({
          ios: {
            // Use a transparent background on iOS to show the blur effect
            position: "absolute",
            // color: appColor().background,
          },
          default: {},
        }),
      }}
    >
      <Tabs.Screen
        name="market"
        options={{
          title: "Market",
          tabBarIcon: ({ color }) => (
            <IconSymbol size={28} name="questionmark.app" color={color} />
          ),
          // headerRightContainerStyle: {
          //   backgroundColor: appColor().background,
          // },
          // headerBackgroundContainerStyle: {
          //   backgroundColor: appColor().background,
          // },
        }}
      />

      <Tabs.Screen
        name="wallets"
        options={{
          title: "Wallets",
          tabBarIcon: ({ color }) => (
            <IconSymbol size={28} name="questionmark.app" color={color} />
          ),
        }}
      />
      <Tabs.Screen
        name="services"
        options={{
          title: "Services",
          tabBarIcon: ({ color }) => (
            <IconSymbol size={28} name="bookmark" color={color} />
          ),
        }}
      />
    </Tabs>
  );
}
