import InputText from "@/components/forms/InputText";
import { TView } from "@/components/TView";
import { useAppForm, AppStores } from "@/lib";
import React from "react";
import { z } from "zod";
import { IEvents } from "@/lib/log/events";
import HeaderBar from "@/components/Header";
import { useColor } from "@/lib/color";
import Wrapper from "@/components/Wrapper";

const event: IEvents = "AUTH_SEND_EMAIL_OTP";
const formSchema = z.object({
  email: z.string().email("Invalid email format"),
});

export default function SignUpPage() {
  const theme = useColor();
  const store = AppStores.useAuth();

  const { formData, errors, handleChange, setErrors } = useAppForm<
    typeof formSchema._type
  >({
    email: "",
  });

  const handleSubmit = () => {
    const validation = formSchema.safeParse(formData);
    const email = formData.email.toLowerCase();
  };

  return (
    <>
      <HeaderBar title="Create advert" showBackBtn />
      <Wrapper>
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
      </Wrapper>
    </>
  );
}
