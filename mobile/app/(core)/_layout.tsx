import { appColor } from "@/lib/color";
import { Ionicons } from "@expo/vector-icons";
import { Stack, router } from "expo-router";
import { Platform } from "react-native";

export default function Layout() {
  const backIcon = Platform.OS === "ios" ? "chevron-back" : "arrow-back-sharp";
  return (
    <Stack
      screenOptions={{
        headerStyle: {
          backgroundColor: appColor().background,
        },
        headerTintColor: appColor().foreground,
        headerTitleStyle: {
          fontWeight: "bold",
        },
        headerShown: true,
      }}
    >
      <Stack.Screen name="buy" />
      <Stack.Screen name="receive" />
      <Stack.Screen name="sell" />
      <Stack.Screen name="send" />
      <Stack.Screen name="settings" />
      <Stack.Screen name="swap" />
      {/* Optionally configure static options outside the route.*/}
      {/* <Stack.Screen name="home" options={{}} /> */}
    </Stack>
  );
}
