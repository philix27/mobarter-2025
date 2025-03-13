import {
  Image,
  ImageSourcePropType,
  ScrollView,
  StyleSheet,
} from "react-native";
import { ThemedText } from "@/components/ThemedText";
import { ThemedView } from "@/components/ThemedView";
import React from "react";
import { appColor } from "@/lib/color";
import { AppAssets } from "@/assets";

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

function AssetsRow(params: {
  imgUrl: ImageSourcePropType | undefined;
  currency: string;
  balance: number;
  dollarBalance: number;
  performance: string;
  onPress?: VoidFunction;
}) {
  return (
    <ThemedView
      style={{
        paddingVertical: 10,
        marginBottom: 2,
        backgroundColor: appColor().accent,
        // width: "100%",
        paddingHorizontal: 10,
      }}
    >
      <ThemedView
        style={{
          display: "flex",
          flexDirection: "row",
          justifyContent: "space-between",
          backgroundColor: appColor().accent,
        }}
      >
        <ThemedView
          style={{
            display: "flex",
            flexDirection: "row",
            backgroundColor: appColor().accent,
          }}
        >
          <ThemedView
            style={{ backgroundColor: appColor().accent, marginRight: 10 }}
          >
            <Image
              source={params.imgUrl}
              style={{ height: 40, width: 40, borderRadius: 20 }}
            />
          </ThemedView>
          <ThemedView style={{ backgroundColor: appColor().accent }}>
            <ThemedText type="defaultSemiBold">{params.currency}</ThemedText>
            <ThemedText type="default" style={{ fontSize: 13 }}>
              {params.performance}
            </ThemedText>
          </ThemedView>
        </ThemedView>

        <ThemedView style={{ backgroundColor: appColor().accent }}>
          <ThemedText>{params.dollarBalance}</ThemedText>
          <ThemedText>{params.balance}</ThemedText>
        </ThemedView>
      </ThemedView>
    </ThemedView>
  );
}

const styles = StyleSheet.create({
  reactLogo: {
    height: 50,
    width: 50,
  },
});
