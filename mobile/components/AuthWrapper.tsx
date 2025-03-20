import { SafeAreaView, ScrollView } from "react-native";
import { ReactNode } from "react";
import { TView } from "./TView";
import { TText } from "./TText";
import InputButton from "./forms/Button";
import { useColor } from "@/lib/color";
import { Link } from "expo-router";

export default function AuthWrapper(props: {
  children: ReactNode;
  bottomComp?: ReactNode;
  title: string;
  subtitle?: string;
  btnTitle: string;
  onPress: VoidFunction;
  linkText?: string;
  linkHref?: string;
  bottomText: string;
  isLoading?: boolean;
}) {
  const appColor = useColor();
  return (
    <SafeAreaView
      style={{
        backgroundColor: appColor.background,
        minHeight: "100%",
      }}
    >
      <ScrollView bounces={false}>
        <TView
          style={{
            height: "100%",
            display: "flex",
            alignItems: "center",
            width: "100%",
            paddingHorizontal: 20,
            minHeight: "100%",
            backgroundColor: appColor.background,
          }}
        >
          <TView
            style={{
              marginTop: 20,
              marginBottom: 10,
              // width: "100%",
              display: "flex",
              alignItems: "center",
              justifyContent: "center",
              alignSelf: "center",
            }}
          >
            <TText type="title">{props.title}</TText>
          </TView>

          {props.subtitle && (
            <TView style={{ marginBottom: 40 }}>
              <TText type="defaultSemiBold">{props.subtitle}</TText>
            </TView>
          )}
          {props.children}
          <InputButton
            title={props.btnTitle}
            onPress={props.onPress}
            style={{ marginBottom: 20, minWidth: "50%" }}
            isLoading={props.isLoading}
          />
          {props.bottomComp && props.bottomComp}
          <TText type="default" style={{ marginBottom: 5 }}>
            {props.bottomText}
          </TText>
          {props.linkHref && props.linkText && (
            <Link href={props.linkHref as any}>
              <TText type="link">{props.linkText}</TText>
            </Link>
          )}
        </TView>
      </ScrollView>
    </SafeAreaView>
  );
}
