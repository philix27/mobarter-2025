import { ScrollView, SafeAreaView, TouchableOpacity } from "react-native";
import { ThemedText } from "@/components/ThemedText";
import { appColor } from "@/lib/color";

export default function QuizScreen() {
  return (
    <SafeAreaView
      style={{
        height: "100%",
        backgroundColor: appColor().background,
        // paddingBottom: 50,
      }}
    >
      <ScrollView
        style={{
          paddingHorizontal: 0,
          paddingVertical: 40,
          backgroundColor: appColor().background,
          minHeight: "100%"
        }}
      >
        <ThemedText>Quiz</ThemedText>
      </ScrollView>
    </SafeAreaView>
  );
}
