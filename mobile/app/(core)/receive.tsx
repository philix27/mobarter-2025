import { StyleSheet } from "react-native";
import { appColor } from "@/lib/color";
import HeaderBar from "@/components/Header";
import QRCode from "react-native-qrcode-svg";
import Wrapper from "@/components/Wrapper";
import { ThemedView } from "@/components/ThemedView";
import { ThemedText } from "@/components/ThemedText";
import InputButton from "@/components/forms/Button";

export default function SettingsScreen() {
  return (
    <Wrapper>
      <HeaderBar title="Receive" />

      <ThemedView
        style={{
          paddingVertical: 50,
          flexDirection: "column",
          alignItems: "center",
          rowGap: 20,
        }}
      >
        <ThemedText type="defaultSemiBold">Wallet Address</ThemedText>
        <QRCode
          value="https://www.mobarter.com/"
          logoBackgroundColor="transparent"
          size={250}
        />
        <ThemedView style={{ width: "80%" }}>
          <ThemedText style={{ textAlign: "center" }}>
            0x462E5F272B8431562811126779da6EcaE51A5B40
          </ThemedText>
        </ThemedView>
        <InputButton title="Copy" onPress={() => {}} />
      </ThemedView>
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
