import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
import { useColor } from "@/lib/color";
import { AppStores } from "@/lib/zustand";
import React from "react";
import { TouchableOpacity } from "react-native";

export default function AssetsTab() {
  const store = AppStores.useView();
  return (
    <TView>
      <TView
        style={{
          display: "flex",
          flexDirection: "row",
          padding: 2,
          borderRadius: 7,
        }}
      >
        <TabIem
          title={"Services"}
          isActive={store.activeViewAsset === "Services"}
          onPress={() => {
            store.update({ activeViewAsset: "Services" });
          }}
        />
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
      </TView>
    </TView>
  );
}

function TabIem(params: {
  title: string;
  isActive: boolean;
  onPress: VoidFunction;
}) {
  const appColor = useColor()
  return (
    <TouchableOpacity onPress={params.onPress}>
      <TView
        style={{
          paddingVertical: 5,
          paddingHorizontal: 10,
          marginRight: 8,
        }}
      >
        <TText
          type="default"
          style={{
            fontSize: 16,
            fontWeight: params.isActive ? 600 : 500,
            color: params.isActive ? appColor.primary : appColor.muted,
          }}
        >
          {params.title}
        </TText>
      </TView>
    </TouchableOpacity>
  );
}
