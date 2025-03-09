import IconRound from "@/components/IconRound";
import { ThemedText } from "@/components/ThemedText";
import { ThemedView } from "@/components/ThemedView";
import { appColor } from "@/lib/color";
import { router } from "expo-router";
import { View, SafeAreaView, StyleSheet, TouchableOpacity } from "react-native";

export default function App() {
  // const conversations = ["Pharmacology", "Medicine", "Pharmaceutics"];
  const quickNotes: {
    title: string;
    link: string;
  }[] = [
    {
      title: "Diseases",
      link: "/diseases",
    },
    {
      title: "Drug List",
      link: "/diseases",
    },
    {
      title: "Clinical Case studies",
      link: "/diseases",
    },
  ];
  return (
    <SafeAreaView
      style={{ height: "100%", backgroundColor: appColor().background }}
    >
      <ThemedView
        style={{
          marginBottom: 10,
          marginHorizontal: 20,
          backgroundColor: appColor().primary,
          width: "auto",
          borderRadius: 20,
          padding: 20,
          height: 150,
        }}
      >
        <ThemedText type="defaultSemiBold">Balance:</ThemedText>
      </ThemedView>

      <ThemedView
        style={{
          paddingHorizontal: 8,
          marginVertical: 20,
          display: "flex",
          flexDirection: "row",
          justifyContent: "space-around",
          alignItems: "center",
          backgroundColor: appColor().background,
        }}
      >
        <IconRound icon="seal" title="Send" />
        <IconRound icon="seal" title="Receive" />
        <IconRound icon="cube.transparent" title="Buy" />
        <IconRound icon="seal" title="Sell" />
      </ThemedView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  aiButton: {},
  topBar: {},
});
