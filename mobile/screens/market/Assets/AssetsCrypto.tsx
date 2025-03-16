import { ScrollView, StyleSheet } from "react-native";
import { TView } from "@/components/TView";
import React from "react";
import { AppAssets } from "@/assets";
import { AssetsRow } from "./AssetsRow";
import { router } from "expo-router";

export default function AssetsCrypto() {
  return (
    <ScrollView>
      <TView style={{ marginBottom: 50 }}>
        <AssetsRow
          imgUrl={AppAssets.logo.atom}
          currency={"ATOM"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={() => {
            router.push({
              pathname: `/coin/1` as any,
              params: { title: "ATOM" },
            });
          }}
        />
        <AssetsRow
          imgUrl={AppAssets.logo.bitcoin}
          currency={"Bitcoin"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={() => {
            router.push({
              pathname: `/coin/1` as any,
              params: { title: "Bitcoin" },
            });
          }}
        />
        <AssetsRow
          imgUrl={AppAssets.logo.celo}
          currency={"Celo"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={() => {
            router.push({
              pathname: `/coin/1` as any,
              params: { title: "Celo" },
            });
          }}
        />
        <AssetsRow
          imgUrl={AppAssets.logo.ether}
          currency={"Ethereum"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={() => {
            router.push({
              pathname: `/coin/1` as any,
              params: { title: "Ethereum" },
            });
          }}
        />
        <AssetsRow
          imgUrl={AppAssets.logo.cusd}
          currency={"cUSD"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={() => {
            router.push({
              pathname: `/coin/1` as any,
              params: { title: "cUSD" },
            });
          }}
        />
        <AssetsRow
          imgUrl={AppAssets.logo.glo}
          currency={"Glo"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={() => {
            router.push({
              pathname: `/coin/1` as any,
              params: { title: "Glo" },
            });
          }}
        />
        <AssetsRow
          imgUrl={AppAssets.logo.usdt}
          currency={"USDT"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={() => {
            router.push({
              pathname: `/coin/1` as any,
              params: { title: "USDT" },
            });
          }}
        />
        <AssetsRow
          imgUrl={AppAssets.logo.usdt}
          currency={"Ethereum"}
          balance={0.5}
          dollarBalance={5000}
          performance={"+2.3%"}
          onPress={() => {
            router.push({
              pathname: `/coin/1` as any,
              params: { title: "Ethereum" },
            });
          }}
        />
      </TView>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  reactLogo: {
    height: 50,
    width: 50,
  },
});
