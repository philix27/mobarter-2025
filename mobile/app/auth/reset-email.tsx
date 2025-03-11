import AuthWrapper from "@/components/AuthWrapper";
import InputText from "@/components/forms/InputText";
import { ThemedView } from "@/components/ThemedView";
import { router } from "expo-router";
import React from "react";

export default function ResetPasswordPage() {
  return (
    <AuthWrapper
      title="Reset your password"
      subtitle="Verify your email"
      btnTitle="Send OTP"
      onPress={() => {
        router.push("/auth/verify-otp");
      }}
      bottomText={""}
    >
      <ThemedView>
        <InputText
          label={"Email"}
          value={""}
          onChangeText={function () {}}
          placeholder={"Enter email"}
          secureTextEntry={false}
        />
      </ThemedView>
    </AuthWrapper>
  );
}
