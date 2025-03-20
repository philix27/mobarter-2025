import AuthWrapper from "@/components/AuthWrapper";
import InputText from "@/components/forms/InputText";
import { TView } from "@/components/TView";
import { router } from "expo-router";
import React from "react";

export default function ResetPasswordPage() {
  return (
    <AuthWrapper
      title="Reset Password"
      btnTitle="Reset password"
      subtitle="Welcome back"
      onPress={() => {
        router.push("/auth/sign-in");
      }}
      bottomText={"Stay updated"}
    >
      <TView>
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
      </TView>
    </AuthWrapper>
  );
}
