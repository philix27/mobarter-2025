import { ScrollView, SafeAreaView, TouchableOpacity } from "react-native";
import { ThemedText } from "@/components/ThemedText";
import { appColor } from "@/lib/color";

export default function QuizScreen() {
  return (
    <SafeAreaView
      style={{
        backgroundColor: appColor().background,
        paddingBottom: 50,
      }}
    >
      <ScrollView
        style={{
          paddingHorizontal: 0,
          paddingVertical: 40,
          backgroundColor: appColor().background,
        }}
      >
        <ThemedText>Quiz</ThemedText>
      </ScrollView>
    </SafeAreaView>
  );
}
