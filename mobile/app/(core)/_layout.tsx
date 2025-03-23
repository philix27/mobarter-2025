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
      <Stack.Screen name="direct-exchange" />
      <Stack.Screen name="minisafe" />
      <Stack.Screen name="settings/index" />
      <Stack.Screen name="swap/[id]/index" />
      <Stack.Screen name="coin/[id]/index" />
    </Stack>
  );
}
