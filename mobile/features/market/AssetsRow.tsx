import { Image, ImageSourcePropType, TouchableOpacity } from "react-native";
import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
import React, { JSX } from "react";
import { useColor } from "@/lib/color";
import SvgImage from "react-native-remote-svg";

export function AssetsRow(params: {
  imgUrl?: ImageSourcePropType | undefined;
  svgUrl?: string | undefined;
  icon?: JSX.Element;
  currency: string;
  balance: number;
  dollarBalance: string;
  performance: string;
  tokenAddr: string;
  onPress?: VoidFunction;
}) {
  const appColor = useColor();
  const bgColor = appColor.accent;
  return (
    <TouchableOpacity
      onPress={params.onPress}
      style={{
        paddingVertical: 5,
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
            {params.icon}
            {params.imgUrl && (
              <Image
                source={params.imgUrl}
                style={{ height: 40, width: 40, borderRadius: 20 }}
              />
            )}

            {params.svgUrl && (
              <SvgImage
                source={{ uri: params.svgUrl }}
                style={{ height: 40, width: 40, borderRadius: 20 }}
              />
            )}
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
