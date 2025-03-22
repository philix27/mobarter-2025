import { TText, TView } from "@/components";
import InputButton from "@/components/forms/Button";
import InputText from "@/components/forms/InputText";
import { useColor } from "@/lib/color";
import React from "react";
import { KeyboardAvoidingView } from "react-native";

export default function SendCryptoModal() {
  const theme = useColor();
  return (
    <KeyboardAvoidingView style={{}} behavior="padding" enabled>
      <TView>
        <InputText
          label={"Wallet Address"}
          keyboardType="default"
          placeholder={"Enter wallet address"}
          // value={formData.email}
          // onChangeText={(text) => handleChange("email", text.toLowerCase())}
          // error={errors!.email === undefined ? undefined : errors!.email}
        />
        <InputText
          label={"Amount"}
          keyboardType="numeric"
          placeholder={"Enter amount"}
          // value={formData.email}
          // onChangeText={(text) => handleChange("email", text.toLowerCase())}
          // error={errors!.email === undefined ? undefined : errors!.email}
        />
        <TView style={{ alignItems: "center", justifyContent: "center" }}>
          <InputButton
            title="Send"
            onPress={() => {}}
            style={{ width: "50%" }}
          />
        </TView>
      </TView>
    </KeyboardAvoidingView>
  );
}
