import AuthWrapper from "@/components/WrapperAuth";
import InputText from "@/components/forms/InputText";
import { TView } from "@/components/TView";
import { useAppForm, ApiHooks, log, AppStores } from "@/lib";
import { router } from "expo-router";
import React from "react";
import { z } from "zod";
import Toast from "react-native-toast-message";
import { OtpPurpose } from "@/lib/__generated__/graphql";
import { IEvents } from "@/lib/log/events";

const event: IEvents = "AUTH_SEND_EMAIL_OTP";
const formSchema = z.object({
  email: z.string().email("Invalid email format"),
});

export default function ResetPasswordPage() {
  const store = AppStores.useAuth();
  const [mutate, sendEmailFn] = ApiHooks.useAuth_sendEmailOtp();

  const { formData, errors, handleChange, setErrors } = useAppForm<
    typeof formSchema._type
  >({
    email: "",
  });

  const handleSubmit = () => {
    const validation = formSchema.safeParse(formData);
    const email = formData.email.toLowerCase();
    //  router.push("/auth/verify-otp");
    // return;
    if (!validation.success) {
      const errorMessages = validation.error.format();
      setErrors({
        email: errorMessages.email?._errors[0] || "",
      });
    } else {
      mutate({
        variables: {
          input: {
            email,
            purpose: OtpPurpose.SignUp,
          },
        },
        onCompleted: (res) => {
          log.info(event, res.auth_sendEmailOtp);
          // log.info(event, email);
          store.update({
            email: email,
            sendEmailToken: res.auth_sendEmailOtp.token,
            purpose: "resetPassword",
          });
          router.push("/auth/verify-otp");
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
    }
  };

  return (
    <AuthWrapper
      title="Reset your password"
      subtitle="Verify your email"
      btnTitle="Send OTP"
      onPress={handleSubmit}
      isLoading={sendEmailFn.loading}
      bottomText={"Have an account?"}
      linkHref="/auth/sign-in"
      linkText="Login"
    >
      <TView>
        <InputText
          label={"Email"}
          value={formData.email}
          keyboardType="email-address"
          onChangeText={(text) => handleChange("email", text.toLowerCase())}
          placeholder={"Enter email"}
          error={errors!.email === undefined ? undefined : errors!.email}
        />
      </TView>
    </AuthWrapper>
  );
}
