import AuthWrapper from "@/components/AuthWrapper";
import InputText from "@/components/forms/InputText";
import { TView } from "@/components/TView";
import React from "react";

export default function SignUpPage() {
  return (
    <AuthWrapper
      title="Sign Up"
      btnTitle="Create account"
      onPress={() => {}}
      bottomText={"Have an account?"}
      linkHref="/auth/sign-in"
      linkText="Login"
    >
      <TView>
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
      </TView>
    </AuthWrapper>
  );
}
