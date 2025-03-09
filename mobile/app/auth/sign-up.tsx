import AuthWrapper from "@/components/AuthWrapper";
import InputText from "@/components/forms/InputText";
import { ThemedView } from "@/components/ThemedView";
import React from "react";

export default function SignUpPage() {
  return (
    <AuthWrapper title="Sign Up" btnTitle="Create account" onPress={() => {}}>
      <ThemedView>
        <InputText
          label={"Email"}
          value={""}
          onChangeText={function () {}}
          placeholder={"Enter email"}
          secureTextEntry={false}
        />
        <InputText
          label={"First name"}
          value={""}
          onChangeText={function () {}}
          placeholder={"First name"}
          secureTextEntry={false}
        />
        <InputText
          label={"Last name"}
          value={""}
          onChangeText={function () {}}
          placeholder={"Last name"}
          secureTextEntry={false}
        />
        <InputText
          label={"Country"}
          value={""}
          onChangeText={function () {}}
          placeholder={"Last name"}
          secureTextEntry={false}
        />
        <InputText
          label={"Password"}
          value={""}
          onChangeText={function () {}}
          placeholder={"Enter password"}
          secureTextEntry={true}
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
