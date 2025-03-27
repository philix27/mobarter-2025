import { View, Text, Pressable, Image, TouchableOpacity } from "react-native";
import React from "react";
import {
  DrawerContentComponentProps,
  DrawerContentScrollView,
} from "@react-navigation/drawer";
import { router, useNavigation } from "expo-router";
import { DrawerActions } from "@react-navigation/native";
import { TView } from "./TView";
import { TText } from "./TText";

export const useDrawer = () => {
  const navigation = useNavigation();
  const open = () => navigation.dispatch(DrawerActions.openDrawer());
  const close = () => navigation.dispatch(DrawerActions.closeDrawer());
  const toggle = () => navigation.dispatch(DrawerActions.toggleDrawer());

  return { open, close, toggle };
};
const links: { title: string; link: string }[] = [
  { title: "Profile", link: "/(core)/settings" },
  { title: "Adverts", link: "(core)/advert/index" },
  { title: "Orders", link: "(core)/orders/index" },
  { title: "Transactions", link: "/adverts" },
  { title: "Manage adverts", link: "/adverts" },
];

export default function DrawerContent(props: DrawerContentComponentProps) {
  const { close } = useDrawer();
  return (
    <TView style={{ flex: 1 }}>
      <DrawerContentScrollView
        {...props}
        scrollEnabled={false}
        style={{ marginTop: 50 }}
      >
        {/* {props.state.routeNames} */}
        {/* <DrawerItemList {...props} /> */}
        {links.map((val, i) => (
          <TView key={i} style={{ marginBottom: 20, marginHorizontal: 20 }}>
            <TouchableOpacity
              onPress={() => {
                router.push(val.link as any);
              }}
            >
              <TText type="subtitle">{val.title}</TText>
            </TouchableOpacity>
          </TView>
        ))}
        <TView style={{ marginBottom: 20, marginHorizontal: 20 }}>
          <TouchableOpacity onPress={close}>
            <TText type="subtitle">Logout</TText>
          </TouchableOpacity>
        </TView>
      </DrawerContentScrollView>
    </TView>
  );
}
