import { StyleSheet } from "react-native";
import { appColor } from "@/lib/color";
import HeaderBar from "@/components/Header";
import QRCode from "react-native-qrcode-svg";
import Wrapper from "@/components/Wrapper";
import { TView } from "@/components/TView";
import { TText } from "@/components/TText";
import InputButton from "@/components/forms/Button";

export default function SettingsScreen() {
  return (
    <Wrapper>
      <HeaderBar title="Receive" />

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
    </Wrapper>
  );
}

const styles = StyleSheet.create({
  titleContainer: {
    flexDirection: "row",
    alignItems: "center",
    gap: 8,
    backgroundColor: appColor().background,
  },
  stepContainer: {
    gap: 8,
    marginBottom: 8,
  },
  reactLogo: {
    height: 178,
    width: 290,
    bottom: 0,
    left: 0,
    position: "absolute",
  },
});
