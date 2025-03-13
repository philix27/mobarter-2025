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
        // headerBackButtonDisplayMode: "minimal",
        tabBarActiveBackgroundColor: appColor().background,
        tabBarInactiveBackgroundColor: appColor().background,
        headerTitleStyle: {
          color: appColor().muted,
        },
        headerShown: true,
        headerBackgroundContainerStyle: {
          backgroundColor: appColor().background,
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
            <IconSymbol size={24} name="questionmark.app" color={color} />
          ),
        }}
      />

      {/* <Tabs.Screen
        name="wallets"
        // name="wallets"
        options={{
          title: "Wallets",
          tabBarIcon: ({ color }) => (
            <IconSymbol size={24} name="questionmark.app" color={color} />
          ),
        }}
      /> */}
      <Tabs.Screen
        name="services"
        options={{
          title: "Services",
          tabBarIcon: ({ color }) => (
            <IconSymbol size={24} name="bookmark" color={color} />
          ),
        }}
      />
    </Tabs>
  );
}
