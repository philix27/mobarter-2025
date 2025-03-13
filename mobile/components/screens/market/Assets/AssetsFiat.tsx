import { AppAssets } from "@/assets";
import { ThemedView } from "@/components/ThemedView";
import React from "react";
import { ScrollView } from "react-native";
import { AssetsRow } from "./AssetsRow";

export default function AssetsFiat() {
  return (
    <ScrollView>
      <ThemedView style={{ marginBottom: 50 }}>
        <AssetsRow
          imgUrl={AppAssets.flags.NGN}
          currency={"Naira"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={undefined}
        />
        <AssetsRow
          imgUrl={AppAssets.flags.US}
          currency={"US Dollar"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={undefined}
        />
        <AssetsRow
          imgUrl={AppAssets.flags.Kenya}
          currency={"Kenyan Shillings"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={undefined}
        />
        <AssetsRow
          imgUrl={AppAssets.flags.Europe}
          currency={"Euros"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={undefined}
        />
        <AssetsRow
          imgUrl={AppAssets.flags.Ghana}
          currency={"Cedis"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={undefined}
        />
      </ThemedView>
    </ScrollView>
  );
}
