import { ScrollView, SafeAreaView, Platform } from "react-native";
import { ThemedView } from "@/components/ThemedView";
import { StyleSheet } from "react-native";
import { appColor } from "@/lib/color";
import HeaderBar from "@/components/Header";
import { ThemedText } from "@/components/ThemedText";

export default function QuizScreen() {
  return (
    <SafeAreaView
      style={{
        height: "100%",
        backgroundColor: appColor().background,
        paddingBottom: 50,
      }}
    >
      <HeaderBar title={"one quiz"} />
      <ScrollView style={{ paddingHorizontal: 0 }}>
        <ThemedView
          style={{
            paddingHorizontal: 20,
            paddingVertical: 20,
            height: "100%",
            backgroundColor: appColor().background,
          }}
        >
          <ThemedText>Hello man</ThemedText>
        </ThemedView>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  image: {
    width: 50,
    height: 50,
  },
});
