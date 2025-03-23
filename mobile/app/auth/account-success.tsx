import AuthWrapper from "@/components/WrapperAuth";
import { TView } from "@/components/TView";
import { AppStores, log } from "@/lib";
import { router } from "expo-router";
import React from "react";
import { IEvents } from "@/lib/log/events";
import { TText } from "@/components";

const event: IEvents = "AUTH_ACCOUNT_CREATED";

export default function SignUpPage() {
  const store = AppStores.useAuth();
  const handleSubmit = () => {
    log.info(event);
    store.clear();
    router.push("/(tabs)/home");
  };

  return (
    <AuthWrapper
      title="Congratulations"
      subtitle={`Your account has been created success fully`}
      onPress={handleSubmit}
      btnTitle="Go back to Login"
      bottomText={"Have an account?"}
      linkHref="/auth/sign-in"
      linkText="Login"
    >
      <TView>
        <TText>Welcome</TText>
      </TView>
    </AuthWrapper>
  );
}
