import AuthWrapper from "@/components/AuthWrapper";
import { ThemedText } from "@/components/ThemedText";
import { ThemedView } from "@/components/ThemedView";
import React from "react";

export default function SignInPage() {
  return (
    <AuthWrapper>
      <ThemedView>
        <ThemedText>Openest</ThemedText>
      </ThemedView>
    </AuthWrapper>
  );
}
