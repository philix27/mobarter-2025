import AuthWrapper from "@/components/WrapperAuth";
import { TView } from "@/components/TView";
import { router } from "expo-router";
import React from "react";
import InputOtp from "@/components/forms/Otp";
import { ApiHooks, log } from "@/lib";
import { AppStores } from "@/lib/zustand";
import Toast from "react-native-toast-message";
import { IEvents } from "@/lib/log/events";

const event: IEvents = "AUTH_VERIFY_OTP";
export default function VerifyOtpPage() {
  const [verifyOtp, verifyOtpFn] = ApiHooks.useAuth_verifyEmailOtp();
  const store = AppStores.useAuth();

  const handleSubmit = () => {
    router.push("/auth/reset-password");
    verifyOtp({
      variables: {
        input: {
          email: store.email.toLowerCase(),
          token: store.sendEmailToken,
          otp: "",
        },
      },
      onCompleted: (res) => {
        log.info(event);
        router.push("/auth/sign-up");
      },
      onError: (error) => {
        log.error(event, error.message);
        Toast.show({
          type: "error",
          text1: "Error: " + error.graphQLErrors[0].message,
          text2: "Oops something went wrong",
        });
      },
    });
  };

  return (
    <AuthWrapper
      title="Verify Email"
      btnTitle="Verify"
      subtitle="Check your email for your OTP code"
      onPress={handleSubmit}
      bottomText={"Have an account?"}
      linkHref="/auth/sign-in"
      linkText="Login"
      isLoading={verifyOtpFn.loading}
    >
      <TView style={{ marginBottom: 20 }}>
        <InputOtp
          onTextChange={(item) => {}}
          onFilled={(item) => {}}
          style={{ width: "80%" }}
        />
      </TView>
    </AuthWrapper>
  );
}
