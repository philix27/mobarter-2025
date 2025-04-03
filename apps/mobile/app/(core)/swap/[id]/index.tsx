import { SafeAreaView, StyleSheet } from "react-native";
import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
import { useColor } from "@/lib/color";
import HeaderBar from "@/components/Header";

export default function Page() {
  return (
    <SafeAreaView>
      <HeaderBar title="Swap" showBackBtn/>
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
