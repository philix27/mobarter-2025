import AuthWrapper from "@/components/AuthWrapper";
import { ThemedView } from "@/components/ThemedView";
import InputText from "@/components/forms/InputText";
import React from "react";

export default function SignInPage() {
  return (
    <AuthWrapper
      title="Login"
      btnTitle="Login"
      subtitle="Welcome back"
      onPress={() => {}}
    >
      <ThemedView>
        <InputText
          label={"Email"}
          value={""}
          onChangeText={function () {}}
          placeholder={"Enter email"}
          secureTextEntry={false}
        />
        <InputText
          label={"Password"}
          value={""}
          onChangeText={function () {}}
          placeholder={"Enter password"}
          secureTextEntry={true}
        />
      </ThemedView>
    </AuthWrapper>
  );
}
