import AuthWrapper from "@/components/WrapperAuth";
import InputText from "@/components/forms/InputText";
import { TView } from "@/components/TView";
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
      <TView>
        <InputText
          label={"Email"}
          value={""}
          onChangeText={function () {}}
          placeholder={"Enter email"}
          secureTextEntry={false}
        />
      </TView>
    </AuthWrapper>
  );
}
