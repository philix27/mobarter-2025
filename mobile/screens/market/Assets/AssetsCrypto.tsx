import { ScrollView, StyleSheet } from "react-native";
import { TView } from "@/components/TView";
import React from "react";
import { AssetsRow } from "./AssetsRow";
import { router } from "expo-router";
import { coinsList } from "@/constants";

export default function AssetsCrypto() {
  return (
    <ScrollView>
      <TView style={{ marginBottom: 50 }}>
        {coinsList.map((val, i) => (
          <AssetsRow
            key={i}
            imgUrl={val.image}
            currency={val.symbol}
            balance={0.5}
            dollarBalance={5000}
            performance={"+2.3%"}
            onPress={() => {
              router.push({
                pathname: `/coin/${val.symbol}` as any,
                params: { title: val.title },
              });
            }}
          />
        ))}
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
