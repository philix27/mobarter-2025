import AuthWrapper from "@/components/WrapperAuth";
import InputText from "@/components/forms/InputText";
import { TView } from "@/components/TView";
import { useAppForm, ApiHooks, log } from "@/lib";
import { Country } from "@/lib/__generated__/graphql";
import { router } from "expo-router";
import React from "react";
import { z } from "zod";
import DropdownComponent from "@/components/forms/Dropdown";
import Toast from "react-native-toast-message";
import { AppStores } from "@/lib/zustand";
import { IEvents } from "@/lib/log/events";

const event: IEvents = "AUTH_SIGNUP";

const data = [
  { label: Country.Nigeria, value: Country.Nigeria },
  { label: Country.Ghana, value: Country.Ghana },
  { label: Country.Kenya, value: Country.Kenya },
];
const formSchema = z.object({
  password: z.string().min(6, "Password must be at least 6 characters"),
  confirmPassword: z.string().min(6, "Password must be at least 6 characters"),
  firstName: z.string().min(1, "Required"),
  lastName: z.string().min(1, "Required"),
  country: z.string().min(3, "Required"),
  middleName: z.string().optional(),
});

export default function SignUpPage() {
  const [createAccount, { loading: isLoading }] =
    ApiHooks.useAuth_CreateAccount();
  const store = AppStores.useAuth();

  const { formData, errors, handleChange, setErrors } = useAppForm<
    typeof formSchema._type
  >({
    password: "",
    firstName: "",
    lastName: "",
    middleName: "",
    confirmPassword: "",
    country: "",
  });

  const handleSubmit = () => {
    const validation = formSchema.safeParse(formData);
    // return;
    if (!validation.success) {
      const errorMessages = validation.error.format();
      setErrors({
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
            password: formData.password,
            country: Country.Ghana,
            firstname: formData.country,
            lastname: formData.lastName,
            middlename: formData.middleName,
            email: store.email,
          },
        },
        onCompleted: (res) => {
          log.info(event);
          router.push("/auth/account-success");
        },
        onError: (error, clientOptions) => {
          console.log("ResultErr of login: ", JSON.stringify(error));
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
      title="Sign Up"
      btnTitle="Create account"
      subtitle={`Email: ${store.email}`}
      onPress={handleSubmit}
      bottomText={"Have an account?"}
      linkHref="/auth/sign-in"
      linkText="Login"
    >
      <TView>
        <InputText
          label={"First name"}
          value={formData.firstName}
          onChangeText={(text) => handleChange("firstName", text)}
          placeholder={"First name"}
          error={
            errors!.firstName === undefined ? undefined : errors!.firstName
          }
        />
        <InputText
          label={"Last name"}
          value={formData.lastName}
          onChangeText={(text) => handleChange("lastName", text)}
          placeholder={"Last name"}
          error={errors!.lastName === undefined ? undefined : errors!.lastName}
        />
        <InputText
          label={"Middle name"}
          value={formData.middleName}
          onChangeText={(text) => handleChange("middleName", text)}
          placeholder={"Middle name"}
          error={
            errors!.middleName === undefined ? undefined : errors!.middleName
          }
        />

        <DropdownComponent
          label="Country"
          onChange={(text) => handleChange("country", text.value)}
          value={formData.firstName}
          data={data}
          error={errors!.country === undefined ? undefined : errors!.country}
        />
        <InputText
          label={"Password"}
          value={formData.password}
          onChangeText={(text) => handleChange("password", text)}
          placeholder={"Enter password"}
          secureTextEntry={true}
          error={errors!.password === undefined ? undefined : errors!.password}
        />
        <InputText
          label={"Confirm Password"}
          value={formData.confirmPassword}
          onChangeText={(text) => handleChange("confirmPassword", text)}
          placeholder={"Enter password"}
          secureTextEntry={true}
          error={
            errors!.confirmPassword === undefined
              ? undefined
              : errors!.confirmPassword
          }
        />
      </TView>
    </AuthWrapper>
  );
}
