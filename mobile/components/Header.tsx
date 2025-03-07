import { appColor } from "@/lib/color";
import { Ionicons } from "@expo/vector-icons";
import { router, Stack } from "expo-router";
import React from "react";
import { Platform } from "react-native";

export default function HeaderBar(props: { title: string }) {
  const backIcon = Platform.OS === "ios" ? "chevron-back" : "arrow-back-sharp";
  return (
    <Stack.Screen
      options={{
        title: props.title,
        headerTintColor: appColor().foreground,
        headerTitleStyle: {
          fontWeight: "600",
          fontSize: 13,
        },
        headerLeft: () => (
          <Ionicons
            name={backIcon}
            size={25}
            color="white"
            onPress={() => router.back()}
          />
        ),
        // headerTitle: (props) => <LogoTitle {...props} />,
      }}
    />
  );
}
