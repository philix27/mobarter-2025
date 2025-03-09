import HeaderBar from "@/components/Header";
import { ThemedText } from "@/components/ThemedText";
import { appColor } from "@/lib/color";
import { fetch as expoFetch } from "expo/fetch";
import { View, TextInput, ScrollView, Text, SafeAreaView } from "react-native";

export default function App() {
  return (
    <SafeAreaView
      style={{ height: "100%", backgroundColor: appColor().background }}
    >
      <HeaderBar title="Pharmbot AI" />
      <View
        style={{
          height: "95%",
          display: "flex",
          flexDirection: "column",
          paddingHorizontal: 8,
        }}
      >
        <ThemedText>AI Guy</ThemedText>
      </View>
    </SafeAreaView>
  );
}
