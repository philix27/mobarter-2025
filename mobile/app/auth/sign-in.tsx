import AuthWrapper from "@/components/AuthWrapper";
import { ThemedText } from "@/components/ThemedText";
import { ThemedView } from "@/components/ThemedView";
import InputText from "@/components/forms/InputText";
import { Link, router } from "expo-router";
import React from "react";

export default function SignInPage() {
  return (
    <AuthWrapper
      title="Login"
      btnTitle="Login"
      subtitle="Welcome back"
      onPress={() => {
        router.push("/app/market");
      }}
      bottomText={"Do not have an account?"}
      linkHref="/auth/sign-up"
      linkText="Sign up"
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
        <ThemedView style={{ paddingTop: 5, marginBottom: 10 }}>
          <Link href={"/auth/reset-email"}>
            <ThemedText type="link">Forgot Password</ThemedText>
          </Link>
        </ThemedView>
      </ThemedView>
    </AuthWrapper>
  );
}
