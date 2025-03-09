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
          marginVertical: 40,
          marginLeft: 20,
        }}
      >
        <ThemedText type="title" style={{ color: appColor().primary }}>
          Good morning, Alexa
        </ThemedText>
      </ThemedView>

      <TouchableOpacity
        style={{
          backgroundColor: appColor().card,
          padding: 15,
          borderRadius: 10,
          marginHorizontal: 15,
          display: "flex",
          alignItems: "center",
          justifyContent: "center",
          width: "60%",
        }}
        onPress={() => {
          router.push("/ai");
        }}
      >
        <ThemedText type="subtitle">Chat with Pharmbot</ThemedText>
      </TouchableOpacity>
      <View
        style={{
          paddingHorizontal: 8,
          marginVertical: 10,
          backgroundColor: appColor().background,
        }}
      >
        {quickNotes.map((val, i) => (
          <TouchableOpacity
            key={i}
            onPress={() => {
              // router.push(val.title);
            }}
            style={{
              paddingVertical: 12,
              paddingHorizontal: 20,
              backgroundColor: appColor().card,
              marginBottom: 0.5,
              width: "100%",
            }}
          >
            <ThemedText type="default" key={i}>
              {i + 1}. {val.title}
            </ThemedText>
          </TouchableOpacity>
        ))}
      </View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  aiButton: {},
  topBar: {},
});
