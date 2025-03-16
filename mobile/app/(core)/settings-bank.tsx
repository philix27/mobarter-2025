import { Image, SafeAreaView, StyleSheet } from "react-native";
import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
import { appColor } from "@/lib/color";
import HeaderBar from "@/components/Header";

export default function MinisafeScreen() {
  return (
    <SafeAreaView>
      <HeaderBar title="Bank Accounts" />
      <TView style={styles.titleContainer}>
        <TText type="title">Welcome!</TText>
      </TView>
    </SafeAreaView>
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
