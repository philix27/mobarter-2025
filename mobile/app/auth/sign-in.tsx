import AuthWrapper from "@/components/AuthWrapper";
import { ThemedText } from "@/components/ThemedText";
import { ThemedView } from "@/components/ThemedView";
import InputText from "@/components/forms/InputText";
import ApiHooks from "@/lib/endpoints";
import { Link } from "expo-router";
import React, { useState } from "react";
import { z } from "zod";
import { StyleSheet, Alert } from "react-native";

// Define the validation schema
const formSchema = z.object({
  email: z.string().email("Invalid email format"),
  password: z.string().min(6, "Password must be at least 6 characters"),
});

export function useAppForm<FormData>(defaultValues: FormData) {
  const [formData, setFormData] = useState<FormData>(defaultValues!);
  const [errors, setErrors] = useState<FormData>(defaultValues!);

  const handleChange = (field: keyof typeof formData, value: string) => {
    setFormData({ ...formData!, [field]: value });
    setErrors({ ...errors!, [field]: "" }); // Clear error when typing
  };

  return { formData, setFormData, errors, handleChange, setErrors };
}

export default function SignInPage() {
  const { formData, setFormData, errors, handleChange, setErrors } = useAppForm(
    {
      email: "",
      password: "",
    }
  );

  const handleSubmit = () => {
    const validation = formSchema.safeParse(formData);
    console.log("On submit");
    if (!validation.success) {
      const errorMessages = validation.error.format();
      setErrors({
        email: errorMessages.email?._errors[0] || "",
        password: errorMessages.password?._errors[0] || "",
      });
    } else {
      Alert.alert("Success", "Form submitted successfully!");
      setFormData({ email: "", password: "" });
      setErrors({ email: "", password: "" });
    }
  };
  return (
    <AuthWrapper
      title="Login"
      btnTitle="Login"
      subtitle="Welcome back"
      onPress={() => {
        console.log("handleSubmit hit");
        handleSubmit();
      }}
      bottomText={"Do not have an account?"}
      linkHref="/auth/sign-up"
      linkText="Sign up"
    >
      <ThemedView>
        <InputText
          label={"Email"}
          value={formData.email}
          keyboardType="email-address"
          onChangeText={(text) => handleChange("email", text)}
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

        <ThemedView style={{ paddingTop: 5, marginBottom: 10 }}>
          <Link href={"/auth/reset-email"}>
            <ThemedText type="link">Forgot Password</ThemedText>
          </Link>
        </ThemedView>
      </ThemedView>
    </AuthWrapper>
  );
}

const styles = StyleSheet.create({
  container: {
    padding: 20,
  },
  label: {
    fontSize: 16,
    fontWeight: "bold",
    marginBottom: 5,
  },
  input: {
    height: 40,
    borderWidth: 1,
    borderColor: "#ccc",
    borderRadius: 8,
    paddingHorizontal: 10,
    marginBottom: 10,
  },
  error: {
    color: "red",
    marginBottom: 10,
  },
});
