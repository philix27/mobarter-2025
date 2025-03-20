import AuthWrapper from "@/components/AuthWrapper";
import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
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
      <TView>
        <TText>Openest</TText>
      </TView>
    </AuthWrapper>
  );
}
