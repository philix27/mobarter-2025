import { TText } from "@/components/TText";
import { Link } from "expo-router";
import { SafeAreaView, View } from "react-native";

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
      <View style={{ gap: 20 }}>
        <Link href="/auth/verify-otp">
          <TText type="subtitle">Verify OTP</TText>
        </Link>

        <Link href="/(tabs)/market">
          <TText type="subtitle">Market</TText>
        </Link>

        <Link href="/auth/sign-in">
          <TText type="subtitle">Login</TText>
        </Link>
        <Link href="/auth/sign-up">
          <TText type="subtitle">Create account</TText>
        </Link>
      </View>
    </SafeAreaView>
  );
}
