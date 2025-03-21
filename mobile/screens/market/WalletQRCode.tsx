import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
import React from "react";
import QRCode from "react-native-qrcode-svg";
import InputButton from "@/components/forms/Button";

export default function WalletQRCode() {
  return (
    <TView
      style={{
        paddingVertical: 50,
        flexDirection: "column",
        alignItems: "center",
        rowGap: 20,
      }}
    >
      <TText type="defaultSemiBold">Wallet Address</TText>
      <QRCode
        value="https://www.mobarter.com/"
        logoBackgroundColor="transparent"
        size={250}
      />
      <TView style={{ width: "80%" }}>
        <TText style={{ textAlign: "center" }}>
          0x462E5F272B8431562811126779da6EcaE51A5B40
        </TText>
      </TView>
      <InputButton title="Copy" onPress={() => {}} />
    </TView>
  );
}
