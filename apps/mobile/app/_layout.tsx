//! Privy Auth
//! Import required polyfills first
// import "fast-text-encoding";
// import "react-native-get-random-values";
// import "@ethersproject/shims";
// Then import the expo router
import "expo-router/entry";
import "react-native-reanimated";
import { useFonts } from "expo-font";
import { Stack } from "expo-router";
import * as SplashScreen from "expo-splash-screen";
import { StatusBar } from "expo-status-bar";
import { useEffect } from "react";
import { RootProviders } from "@/lib/providers";
import { Dimensions } from "react-native";
import React from "react";
import { Drawer } from "expo-router/drawer";
import CustomDrawerContent from "@/components/DrawerContent";
import { useColor } from "@/lib/color";

// Prevent the splash screen from auto-hiding before asset loading is complete.
SplashScreen.preventAutoHideAsync();
// Set the animation options. This is optional.
SplashScreen.setOptions({
  duration: 1000,
  fade: true,
});

export default function RootLayout() {
  const appColor = useColor();
  const [loaded] = useFonts({
    SpaceMono: require("../assets/fonts/SpaceMono-Regular.ttf"),
  });

  useEffect(() => {
    if (loaded) {
      SplashScreen.hideAsync();
    }
  }, [loaded]);

  if (!loaded) {
    return null;
  }
  return (
    <Drawer
      screenOptions={{
        headerShown: false,
        drawerLabelStyle: {
          // marginLeft: -20,
          color: appColor.text,
        },
        drawerActiveBackgroundColor: appColor.background,
        drawerStyle: {
          width: Dimensions.get("window").width / 1.5,
          backgroundColor: appColor.background,
        },
      }}
      drawerContent={CustomDrawerContent}
    >
      <RootProviders>
        <Drawer.Screen
          name="(tabs)"
          options={{
            drawerLabel: "Home",
            title: "Home",
          }}
        />
        <StatusBar style="auto" />
      </RootProviders>
    </Drawer>
  );
}
