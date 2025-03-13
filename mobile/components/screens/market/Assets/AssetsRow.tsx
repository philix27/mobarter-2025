import { Image, ImageSourcePropType } from "react-native";
import { ThemedText } from "@/components/ThemedText";
import { ThemedView } from "@/components/ThemedView";
import React from "react";
import { appColor } from "@/lib/color";

export function AssetsRow(params: {
  imgUrl: ImageSourcePropType | undefined;
  currency: string;
  balance: number;
  dollarBalance: number;
  performance: string;
  onPress?: VoidFunction;
}) {
  const bgColor = appColor().accent;
  return (
    <ThemedView
      style={{
        paddingVertical: 10,
        marginBottom: 4,
        backgroundColor: bgColor,
        paddingHorizontal: 10,
        borderRadius: 15,
      }}
    >
      <ThemedView
        style={{
          display: "flex",
          flexDirection: "row",
          justifyContent: "space-between",
          backgroundColor: bgColor,
        }}
      >
        <ThemedView
          style={{
            display: "flex",
            flexDirection: "row",
            backgroundColor: bgColor,
          }}
        >
          <ThemedView
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
          </ThemedView>
          <ThemedView style={{ backgroundColor: bgColor }}>
            <ThemedText type="defaultSemiBold">{params.currency}</ThemedText>
            <ThemedText type="default" style={{ fontSize: 13 }}>
              {params.performance}
            </ThemedText>
          </ThemedView>
        </ThemedView>

        <ThemedView style={{ backgroundColor: bgColor }}>
          <ThemedText>{params.dollarBalance}</ThemedText>
          <ThemedText>{params.balance}</ThemedText>
        </ThemedView>
      </ThemedView>
    </ThemedView>
  );
}
