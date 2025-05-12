import { Image, ImageSourcePropType, TouchableOpacity } from "react-native";
import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
import React from "react";
import { useColor } from "@/lib/color";

export function AssetsRow(params: {
  imgUrl: ImageSourcePropType | undefined;
  currency: string;
  balance: number;
  dollarBalance: number;
  performance: string;
  onPress?: VoidFunction;
}) {
  const appColor = useColor();
  const bgColor = appColor.accent;
  return (
    <TouchableOpacity
      onPress={params.onPress}
      style={{
        paddingVertical: 10,
        marginBottom: 4,
        backgroundColor: bgColor,
        paddingHorizontal: 10,
        borderRadius: 10,
      }}
    >
      <TView
        style={{
          display: "flex",
          flexDirection: "row",
          justifyContent: "space-between",
          backgroundColor: bgColor,
        }}
      >
        <TView
          style={{
            display: "flex",
            flexDirection: "row",
            backgroundColor: bgColor,
          }}
        >
          <TView
            style={{
              backgroundColor: bgColor,
              marginRight: 10,
              display: "flex",
              flexDirection: "column",
              alignItems: "center",
              justifyContent: "center",
            }}
          >
            <Image
              source={params.imgUrl}
              style={{ height: 40, width: 40, borderRadius: 20 }}
            />
          </TView>
          <TView style={{ backgroundColor: bgColor }}>
            <TText type="defaultSemiBold">{params.currency}</TText>
            <TText type="default" style={{ fontSize: 13 }}>
              {params.performance}
            </TText>
          </TView>
        </TView>

        <TView style={{ backgroundColor: bgColor }}>
          <TText>{params.dollarBalance}</TText>
          <TText>{params.balance}</TText>
        </TView>
      </TView>
    </TouchableOpacity>
  );
}
