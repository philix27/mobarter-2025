import AuthWrapper from "@/components/AuthWrapper";
import InputText from "@/components/forms/InputText";
import { ThemedView } from "@/components/ThemedView";
import React from "react";

export default function ResetPasswordPage() {
  return (
    <AuthWrapper
      title="Reset Password"
      btnTitle="Reset password"
      subtitle="Welcome back"
      onPress={() => {}}
    >
      <ThemedView>
        <InputText
          label={"Password"}
          value={""}
          onChangeText={function () {}}
          placeholder={"Enter password"}
          secureTextEntry={false}
        />
        <InputText
          label={"Confirm Password"}
          value={""}
          onChangeText={function () {}}
          placeholder={"Enter password"}
          secureTextEntry={true}
        />
      </ThemedView>
    </AuthWrapper>
  );
}
