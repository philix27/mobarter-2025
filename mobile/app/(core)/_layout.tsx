import { useColor } from "@/lib/color";
import { Stack } from "expo-router";

export default function Layout() {
  const appColor = useColor();
  return (
    <Stack
      screenOptions={{
        headerStyle: {
          backgroundColor: appColor.background,
        },
        headerTintColor: appColor.foreground,
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
      <Stack.Screen name="swap/[id]/index.tsx" />
      <Stack.Screen name="coin/[id]/index.tsx" />
      {/* Optionally configure static options outside the route.*/}
      {/* <Stack.Screen name="home" options={{}} /> */}
    </Stack>
  );
}
