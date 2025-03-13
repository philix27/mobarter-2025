import { ThemedText } from "@/components/ThemedText";
import { ThemedView } from "@/components/ThemedView";
import { appColor } from "@/lib/color";
import { AppStores } from "@/lib/zustand";
import React from "react";
import { TouchableOpacity } from "react-native";

export default function AssetsTab() {
  const store = AppStores.useView();
  return (
    <ThemedView>
      <ThemedView
        style={{
          display: "flex",
          flexDirection: "row",
          padding: 2,
          borderRadius: 7,
        }}
      >
        <TabIem
          title={"Crypto"}
          isActive={store.activeViewAsset === "Crypto"}
          onPress={() => {
            store.update({ activeViewAsset: "Crypto" });
          }}
        />
        <TabIem
          title={"Fiat"}
          isActive={store.activeViewAsset === "Fiat"}
          onPress={() => {
            store.update({ activeViewAsset: "Fiat" });
          }}
        />
      </ThemedView>
    </ThemedView>
  );
}

function TabIem(params: {
  title: string;
  isActive: boolean;
  onPress: VoidFunction;
}) {
  return (
    <TouchableOpacity onPress={params.onPress}>
      <ThemedView
        style={{
          paddingVertical: 5,
          paddingHorizontal: 10,
          marginRight: 8,
        }}
      >
        <ThemedText
          type="default"
          style={{
            fontSize: 16,
            fontWeight: params.isActive ? 600 : 500,
            color: params.isActive ? appColor().primary : appColor().muted,
          }}
        >
          {params.title}
        </ThemedText>
      </ThemedView>
    </TouchableOpacity>
  );
}
