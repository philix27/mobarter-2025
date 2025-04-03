import { TText, TView } from "@/components";
import InputButton from "@/components/forms/Button";
import InputText from "@/components/forms/InputText";
import { ClipboardGet } from "@/lib";
import { useColor } from "@/lib/color";
import { Feather, FontAwesome6 } from "@expo/vector-icons";
import React, { useState } from "react";
import { KeyboardAvoidingView } from "react-native";

export default function SendCryptoModal() {
  const theme = useColor();
  const [walletAddress, setWalletAddress] = useState("");
  return (
    <KeyboardAvoidingView style={{}} behavior="padding" enabled>
      <TView>
        <InputText
          label={"Wallet Address"}
          keyboardType="default"
          placeholder={"Enter wallet address"}
          value={walletAddress}
          // value={formData.email}
          // onChangeText={(text) => handleChange("email", text.toLowerCase())}
          // error={errors!.email === undefined ? undefined : errors!.email}
          onTrailingIconPress={async () => {
            const text = await ClipboardGet();
            setWalletAddress(text);

            console.log(text);
          }}
          trailingIcon={
            <FontAwesome6 name="paste" size={20} color={theme.muted} />
          }
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
