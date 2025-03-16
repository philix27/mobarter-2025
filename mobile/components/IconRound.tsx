import React, { ReactNode } from "react";
import { TouchableOpacity, View, ViewStyle } from "react-native";
import { appColor } from "@/lib/color";
import { TText } from "./TText";

export default function IconRound(props: {
  children: ReactNode;
  title?: string;
  onPress?: VoidFunction;
  style?: ViewStyle;
}) {
  return (
    <View
      style={[
        {
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
        },
        props.style,
      ]}
    >
      <TouchableOpacity onPress={props.onPress}>
        <View
          style={{
            borderRadius: 25,
            height: 50,
            width: 50,
            backgroundColor: appColor().secondary,
            // padding: 20,
            display: "flex",
            justifyContent: "center",
            alignItems: "center",
          }}
        >
          {props.children}
        </View>
      </TouchableOpacity>
      {props.title && (
        <TText style={{ marginTop: 5, fontSize: 12 }} type="default">
          {props.title}
        </TText>
      )}
    </View>
  );
}
