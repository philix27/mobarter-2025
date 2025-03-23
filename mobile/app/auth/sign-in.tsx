import AuthWrapper from "@/components/WrapperAuth";
import { TView, TText } from "@/components";
import InputText from "@/components/forms/InputText";
import { Link, router } from "expo-router";
import React from "react";
import { z } from "zod";
import { useAppForm, ApiHooks, log, IEvents } from "@/lib";
import { AppStores } from "@/lib/zustand";

const event: IEvents = "AUTH_LOGIN";

const formSchema = z.object({
  email: z.string().email("Invalid email format"),
  password: z.string().min(6, "Password must be at least 6 characters"),
});

export default function SignInPage() {
  const store = AppStores.useUserInfo();
  const [login, { loading: isLoading }] = ApiHooks.useAuthLogin();
  const { formData, setFormData, errors, handleChange, setErrors } = useAppForm(
    {
      email: "",
      password: "",
    }
  );

  const handleSubmit = () => {
    const validation = formSchema.safeParse(formData);

    if (!validation.success) {
      const errorMessages = validation.error.format();
      setErrors({
        email: errorMessages.email?._errors[0] || "",
        password: errorMessages.password?._errors[0] || "",
      });
    } else {
      console.log("DataBefore of login: ", formData);
      login({
        variables: {
          input: {
            email: formData.email.toLowerCase(),
            password: formData.password,
          },
        },
        onCompleted: (res) => {
          store.update({
            ...res.auth_login,
          });
          setFormData({ email: "", password: "" });
          setErrors({ email: "", password: "" });
          log.info(event, res.auth_login.email);
          router.push("/home");
        },
        onError: (error, clientOptions) => {
          console.log("ResultErr of login: ", JSON.stringify(error));
          log.error(event, error.message);
        },
      });
    }
  };

  return (
    <AuthWrapper
      title="Login"
      btnTitle="Login"
      subtitle="Welcome back"
      onPress={handleSubmit}
      bottomText={"Do not have an account?"}
      linkHref="/auth/sign-email"
      linkText="Sign up"
      isLoading={isLoading}
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

        <InputText
          label={"Password"}
          value={formData.password}
          onChangeText={(text) => handleChange("password", text)}
          placeholder={"Enter password"}
          secureTextEntry={true}
          error={errors!.password === undefined ? undefined : errors!.password}
        />

        <TView style={{ paddingTop: 2, marginBottom: 10 }}>
          <Link href={"/auth/reset-email"}>
            <TText type="link">Forgot Password</TText>
          </Link>
        </TView>
      </TView>
    </AuthWrapper>
  );
}
