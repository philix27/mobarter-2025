import { useColor } from "@/lib/color";
import { Ionicons } from "@expo/vector-icons";
import { router, Stack } from "expo-router";
import React from "react";
import { Platform } from "react-native";

export default function HeaderBar({
  hideBack = false,
  ...props
}: {
  title: string;
  hideBack?: boolean;
}) {
  const appColor = useColor();
  const backIcon = Platform.OS === "ios" ? "chevron-back" : "arrow-back-sharp";
  return (
    <Stack.Screen
      options={{
        title: props.title,
        headerTintColor: appColor.background,
        headerTitleStyle: {
          fontWeight: "600",
          fontSize: 14,
          color: appColor.text,
        },
        contentStyle: {
          backgroundColor: appColor.background,
          borderColor: appColor.background,
        },

        headerStyle: {
          backgroundColor: appColor.background,
        },
        headerLeft: hideBack
          ? undefined
          : () => (
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
