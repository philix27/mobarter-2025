import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
import React from "react";
import QRCode from "react-native-qrcode-svg";
import InputButton from "@/components/forms/Button";
import { ClipboardSet } from "@/lib";
import { ScrollView } from "react-native";
import { useActiveAccount } from "thirdweb/react";

export default function WalletQRCode() {
  const account = useActiveAccount();
  return (
    <ScrollView
      showsVerticalScrollIndicator={false}
      showsHorizontalScrollIndicator={false}
      bounces={false}
    >
      <TView
        style={{
          paddingBottom: 50,
          flexDirection: "column",
          alignItems: "center",
        }}
      >
        <QRCode
          value={account!.address}
          logoBackgroundColor="transparent"
          size={310}
        />
        <TText style={{ textAlign: "center", marginVertical: 10 }}>
          {shortenAddress(account!.address)}
        </TText>

        <InputButton
          title="Copy"
          onPress={async () => {
            await ClipboardSet(account!.address);
          }}
        />
      </TView>
    </ScrollView>
  );
}

function shortenAddress(address: string, chars = 10): string {
  if (!address || address.length < chars * 2) {
    throw new Error("Invalid address");
  }
  return `${address.slice(0, chars)}...${address.slice(-chars)}`;
}
