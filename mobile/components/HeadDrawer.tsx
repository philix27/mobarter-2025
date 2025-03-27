import { useColor } from "@/lib/color";
import { Ionicons } from "@expo/vector-icons";
import { router, Stack } from "expo-router";
import React from "react";
import { Platform } from "react-native";
import {
  NativeStackHeaderLeftProps,
  NativeStackHeaderRightProps,
} from "@react-navigation/native-stack";
import Drawer from "expo-router/drawer";

export default function HeadDrawer({
  hideBack = false,
  showBackBtn = false,
  headerRight,
  headerLeft,
  headerShown,
  headerTitle,
  ...props
}: {
  title: string;
  name: string;
  hideBack?: boolean;
  showBackBtn?: boolean;
  headerShown?: boolean | undefined;
  headerLeft?:
    | ((props: NativeStackHeaderLeftProps) => React.ReactNode)
    | undefined;
  headerRight?:
    | ((props: NativeStackHeaderRightProps) => React.ReactNode)
    | undefined;
  headerTitle?:
    | string
    | ((props: { children: string; tintColor?: string }) => React.ReactNode)
    | undefined;
}) {
  const appColor = useColor();
  return (
    <Drawer.Screen
      name={props.name}
      options={{
        drawerLabel: props.title,
        title: props.title,

        // drawerIcon: ({ size }) => (
        //   <Ionicons name="home" size={size} color={appColor.text} />
        // ),
        headerShown: false,
        headerTitleStyle: {
          fontWeight: "600",
          fontSize: 15,
          color: appColor.text,
        },
        drawerStyle: {
          backgroundColor: appColor.background,
          borderColor: appColor.background,
        },
        drawerContentStyle: {
          backgroundColor: appColor.background,
          borderColor: appColor.background,
        },
        drawerLabelStyle: { color: appColor.text },
        drawerActiveBackgroundColor: appColor.card,

        // contentStyle: {
        //   backgroundColor: appColor.background,
        //   borderColor: appColor.background,
        // },
        headerStyle: {
          backgroundColor: appColor.background,
        },
        headerShadowVisible: false,
        headerTintColor: appColor.background,
        headerTitle: headerTitle,
        // headerLeft: headerLeft
        //   ? headerLeft
        //   : showBackBtn
        //   ? () => (
        //       <Ionicons
        //         name={backIcon}
        //         size={25}
        //         color={appColor.text}
        //         onPress={() => router.back()}
        //       />
        //     )
        //   : undefined,
        // headerRight: headerRight,
      }}
    />
  );
}
