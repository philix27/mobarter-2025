import { TView } from "@/components/TView";
import React from "react";
import { OtpInput } from "react-native-otp-entry";
import { useColor } from "@/lib/color";
import Label from "./Label";
import ErrMsg from "./ErrMsg";
import { ViewStyle } from "react-native";

type IProps = {
  label?: string;
  value?: string | undefined;
  placeholder?: string | undefined;
  error?: string | undefined;
  search?: boolean | undefined;
  onFilled: (item: string) => void;
  onTextChange: (item: string) => void;
  style?: ViewStyle;
};
export default function InputOtp({ onFilled, onTextChange, ...props }: IProps) {
  const theme = useColor();
  return (
    <TView style={[{ marginVertical: 8 }, props.style]}>
      {props.label && <Label label={props.label} />}
      <OtpInput
        numberOfDigits={5}
        focusColor={theme.primary}
        autoFocus={false}
        hideStick={true}
        placeholder="******"
        blurOnFilled={true}
        disabled={false}
        type="numeric"
        secureTextEntry={false}
        focusStickBlinkingDuration={500}
        // onFocus={() => console.log("Focused")}
        // onBlur={() => console.log("Blurred")}
        onTextChange={onTextChange}
        onFilled={onFilled}
        textInputProps={{
          accessibilityLabel: "One-Time Password",
        }}
        theme={{
          containerStyle: { backgroundColor: theme.background },
          pinCodeTextStyle: {
            backgroundColor: theme.background,
            color: theme.text,
          },
          placeholderTextStyle: {
            backgroundColor: theme.background,
            color: theme.text,
          },
          pinCodeContainerStyle: {
            backgroundColor: theme.background,
            borderColor: theme.muted,
          },
          focusStickStyle: { backgroundColor: theme.background },
          focusedPinCodeContainerStyle: {
            borderColor: theme.primary,
            borderWidth: 2,
            backgroundColor: theme.background,
          },
          filledPinCodeContainerStyle: { backgroundColor: theme.background },
          disabledPinCodeContainerStyle: {
            backgroundColor: theme.background,
          },
        }}
      />
      {props.error && <ErrMsg msg={props.error} />}
    </TView>
  );
}
