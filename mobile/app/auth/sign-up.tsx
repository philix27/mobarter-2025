import AuthWrapper from "@/components/AuthWrapper";
import InputText from "@/components/forms/InputText";
import { TView } from "@/components/TView";
import { useAppForm } from "@/lib";
import { Country } from "@/lib/__generated__/graphql";
import ApiHooks from "@/lib/endpoints";
import log from "@/lib/log";
import { router } from "expo-router";
import React from "react";
import { z } from "zod";

const formSchema = z.object({
  email: z.string().email("Invalid email format"),
  password: z.string().min(6, "Password must be at least 6 characters"),
  confirmPassword: z.string().min(6, "Password must be at least 6 characters"),
  firstName: z.string(),
  lastName: z.string(),
  country: z.string(),
  middleName: z.string().optional(),
});

export default function SignUpPage() {
  const [createAccount, { loading: isLoading }] =
    ApiHooks.useAuth_CreateAccount();

  const { formData, errors, handleChange, setErrors } = useAppForm<
    typeof formSchema._type
  >({
    email: "",
    password: "",
    firstName: "",
    lastName: "",
    middleName: "",
    confirmPassword: "",
    country: "",
  });

  const handleSubmit = () => {
    const validation = formSchema.safeParse(formData);
    console.log("On submit");

    if (!validation.success) {
      const errorMessages = validation.error.format();
      setErrors({
        email: errorMessages.email?._errors[0] || "",
        password: errorMessages.password?._errors[0] || "",
        firstName: errorMessages.firstName?._errors[0] || "",
        lastName: errorMessages.lastName?._errors[0] || "",
        country: errorMessages.country?._errors[0] || "",
        middleName: errorMessages.middleName?._errors[0] || "",
        confirmPassword: errorMessages.confirmPassword?._errors[0] || "",
      });
    } else {
      createAccount({
        variables: {
          input: {
            email: formData.email.toLowerCase(),
            password: formData.password,
            country: Country.Ghana,
            firstname: "",
            lastname: "",
          },
        },
        onCompleted: (res) => {
          log.info("AUTH_SIGNUP");
          router.push("/market");
        },
        onError: (error, clientOptions) => {
          console.log("ResultErr of login: ", JSON.stringify(error));
          log.error("AUTH_LOGIN", error.message);
        },
      });
    }
  };
  return (
    <AuthWrapper
      title="Sign Up"
      btnTitle="Create account"
      onPress={handleSubmit}
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

        <InputText
          label={"First name"}
          value={formData.firstName}
          onChangeText={(text) => handleChange("firstName", text.toLowerCase())}
          placeholder={"First name"}
          error={
            errors!.firstName === undefined ? undefined : errors!.firstName
          }
        />
        <InputText
          label={"Last name"}
          value={formData.lastName}
          onChangeText={(text) => handleChange("lastName", text.toLowerCase())}
          placeholder={"Last name"}
          error={errors!.lastName === undefined ? undefined : errors!.lastName}
        />
        <InputText
          label={"Middle name"}
          value={formData.middleName}
          onChangeText={(text) =>
            handleChange("middleName", text.toLowerCase())
          }
          placeholder={"Middle name"}
          error={
            errors!.middleName === undefined ? undefined : errors!.middleName
          }
        />
        <InputText
          label={"Country"}
          value={formData.country}
          onChangeText={(text) => handleChange("country", text.toLowerCase())}
          placeholder={"Last name"}
          error={errors!.country === undefined ? undefined : errors!.country}
        />
        <InputText
          label={"Password"}
          value={formData.password}
          onChangeText={(text) => handleChange("password", text.toLowerCase())}
          placeholder={"Enter password"}
          secureTextEntry={true}
        />
        <InputText
          label={"Confirm Password"}
          value={formData.confirmPassword}
          onChangeText={(text) =>
            handleChange("confirmPassword", text.toLowerCase())
          }
          placeholder={"Enter password"}
          secureTextEntry={true}
        />
      </TView>
    </AuthWrapper>
  );
}
