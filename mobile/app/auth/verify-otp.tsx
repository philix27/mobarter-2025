import AuthWrapper from "@/components/AuthWrapper";
import { ThemedText } from "@/components/ThemedText";
import { ThemedView } from "@/components/ThemedView";
import { router } from "expo-router";
import React from "react";

export default function VerifyOtpPage() {
  return (
    <AuthWrapper
      title="Verify otp"
      btnTitle="Verify"
      subtitle=""
      onPress={() => {
        router.push("/auth/reset-password");
      }}
      bottomText={""}
    >
      <ThemedView>
        <ThemedText>Openest</ThemedText>
      </ThemedView>
    </AuthWrapper>
  );
}
