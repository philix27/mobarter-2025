import { router, Tabs } from "expo-router";
import React from "react";
import { appColor } from "@/lib/color";
import { AppTabBar } from "@/components/BottomTabBar";
import {
  Feather,
  Ionicons,
  MaterialCommunityIcons,
  MaterialIcons,
} from "@expo/vector-icons";
import { TView } from "@/components/TView";

export default function TabLayout() {
  return (
    <Tabs
      tabBar={(props) => <AppTabBar {...props} />}
      // screenOptions={{
      //   tabBarActiveTintColor: appColor().primary,
      //   tabBarButton: HapticTab,
      //   tabBarBackground: TabBarBackground,
      //   // headerBackButtonDisplayMode: "minimal",
      //   tabBarActiveBackgroundColor: appColor().background,
      //   tabBarInactiveBackgroundColor: appColor().background,
      //   headerTitleStyle: {
      //     color: appColor().muted,
      //   },
      //   headerShown: true,
      //   headerBackgroundContainerStyle: {
      //     backgroundColor: appColor().background,
      //   },
      //   // headerBackgroundContainerStyle: {
      //   //   backgroundColor: appColor().card,
      //   // },
      //   headerShadowVisible: false,
      //   tabBarStyle: Platform.select({
      //     ios: {
      //       // Use a transparent background on iOS to show the blur effect
      //       position: "absolute",
      //       // color: appColor().background,
      //     },
      //     default: {},
      //   }),
      // }}
    >
      <Tabs.Screen
        name="market"
        options={{
          title: "Mobarter",
          headerTintColor: appColor().background,
          headerTitleStyle: {
            fontWeight: "600",
            fontSize: 15,
            color: appColor().text,
          },
          headerStyle: {
            backgroundColor: appColor().background,
          },
          headerLeft: (props: any) => {
            return (
              <TView
                style={{ marginLeft: 20, flexDirection: "row", columnGap: 20 }}
              >
                <MaterialCommunityIcons
                  name="account"
                  size={20}
                  color={appColor().text}
                  onPress={() => {
                    router.push("/(core)/settings");
                  }}
                />
              </TView>
            );
          },
          headerRight: (props: {
            tintColor?: string;
            pressColor?: string;
            pressOpacity?: number;
            canGoBack: boolean;
          }) => {
            return (
              <TView
                style={{ marginRight: 20, flexDirection: "row", columnGap: 20 }}
              >
                <MaterialIcons
                  name="dark-mode"
                  size={20}
                  color={appColor().text}
                  onPress={() => {
                    router.push("/(core)/settings");
                  }}
                />
                <Ionicons
                  name="notifications-outline"
                  size={20}
                  color={appColor().text}
                />
              </TView>
            );
          },
        }}
      />
      <Tabs.Screen
        name="services"
        options={{
          title: "Services",
          headerTintColor: appColor().background,
          headerTitleStyle: {
            fontWeight: "600",
            fontSize: 15,
            color: appColor().text,
          },
          headerStyle: {
            backgroundColor: appColor().background,
          },
          headerRight: (props: {
            tintColor?: string;
            pressColor?: string;
            pressOpacity?: number;
            canGoBack: boolean;
          }) => {
            return (
              <TView
                style={{ marginRight: 20, flexDirection: "row", columnGap: 20 }}
              >
                <Feather
                  name="settings"
                  size={20}
                  color={appColor().text}
                  onPress={() => {
                    router.push("/(core)/settings");
                  }}
                />
              </TView>
            );
          },
        }}
      />
    </Tabs>
  );
}
