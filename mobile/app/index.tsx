import { ThemedText } from "@/components/ThemedText";
import { Link } from "expo-router";
import { SafeAreaView, Text, View } from "react-native";

export default function Page() {
  return (
    <SafeAreaView
      style={{
        height: "100%",
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
      }}
    >
      <View>
        <Link href="/app/market">
          <ThemedText type="subtitle">Market</ThemedText>
        </Link>
        <Link href="/app/(tabs)/market">
          <ThemedText type="subtitle">Market Tab</ThemedText>
        </Link>
        <Link href="/auth/sign-in">
          <ThemedText type="subtitle">Login</ThemedText>
        </Link>
        <Link href="/auth/sign-up">
          <ThemedText type="subtitle">Create account</ThemedText>
        </Link>
        <Link href="/app/home">
          <ThemedText type="subtitle">Home</ThemedText>
        </Link>
      </View>
    </SafeAreaView>
  );
}
