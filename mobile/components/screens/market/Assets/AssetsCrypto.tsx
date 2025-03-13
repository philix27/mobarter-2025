import { ScrollView, StyleSheet } from "react-native";
import { ThemedView } from "@/components/ThemedView";
import React from "react";
import { AppAssets } from "@/assets";
import { AssetsRow } from "./AssetsRow";

export default function AssetsCrypto() {
  return (
    <ScrollView>
      <ThemedView style={{ marginBottom: 50 }}>
        <AssetsRow
          imgUrl={AppAssets.logo.atom}
          currency={"Ethereum"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={undefined}
        />
        <AssetsRow
          imgUrl={AppAssets.logo.bitcoin}
          currency={"Bitcoin"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={undefined}
        />
        <AssetsRow
          imgUrl={AppAssets.logo.celo}
          currency={"Celo"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={undefined}
        />
        <AssetsRow
          imgUrl={AppAssets.logo.ether}
          currency={"Ethereum"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={undefined}
        />
        <AssetsRow
          imgUrl={AppAssets.logo.cusd}
          currency={"cUSD"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={undefined}
        />
        <AssetsRow
          imgUrl={AppAssets.logo.glo}
          currency={"Glo"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={undefined}
        />
        <AssetsRow
          imgUrl={AppAssets.logo.usdt}
          currency={"USDT"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={undefined}
        />
        <AssetsRow
          imgUrl={AppAssets.logo.usdt}
          currency={"Ethereum"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={undefined}
        />
      </ThemedView>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  reactLogo: {
    height: 50,
    width: 50,
  },
});
