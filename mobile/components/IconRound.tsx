import React from "react";
import { TouchableOpacity, View } from "react-native";
import { IconSymbol } from "./ui/IconSymbol";
import { appColor } from "@/lib/color";
import { SymbolViewProps } from "expo-symbols";
import { ThemedText } from "./ThemedText";

export default function IconRound(props: {
  icon: SymbolViewProps["name"];
  title?: string;
  onPress?: VoidFunction;
}) {
  return (
    <View
      style={{
        display: "flex",
        justifyContent: "center",
        alignItems: "center",
      }}
    >
      <TouchableOpacity onPress={props.onPress}>
        <View
          style={{
            borderRadius: 25,
            height: 50,
            width: 50,
            backgroundColor: appColor().primary,
            padding: 20,
            display: "flex",
            justifyContent: "center",
            alignItems: "center",
          }}
        >
          <IconSymbol name={props.icon} color={"#fff"} />
        </View>
      </TouchableOpacity>
      {props.title && (
        <ThemedText style={{ marginTop: 5, fontSize: 12 }} type="default">
          {props.title}
        </ThemedText>
      )}
    </View>
  );
}
