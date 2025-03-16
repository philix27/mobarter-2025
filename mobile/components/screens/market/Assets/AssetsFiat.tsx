import { AppAssets } from "@/assets";
import { TView } from "@/components/TView";
import React from "react";
import { ScrollView } from "react-native";
import { AssetsRow } from "./AssetsRow";

export default function AssetsFiat() {
  return (
    <ScrollView>
      <TView style={{ marginBottom: 50 }}>
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
      </TView>
    </ScrollView>
  );
}
