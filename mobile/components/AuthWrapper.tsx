import { SafeAreaView, ScrollView } from "react-native";
import { ReactNode } from "react";
import { ThemedView } from "./ThemedView";
import { ThemedText } from "./ThemedText";
import InputButton from "./forms/Button";
import { appColor } from "@/lib/color";
import { Link } from "expo-router";
// import { ScrollView } from "react-native-gesture-handler";

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
}) {
  return (
    <SafeAreaView
      style={{
        backgroundColor: appColor().background,
        minHeight: "100%",
      }}
    >
      <ScrollView>
        <ThemedView
          style={{
            height: "100%",
            display: "flex",
            alignItems: "center",
            width: "100%",
            paddingHorizontal: 20,
            minHeight: "100%",
            backgroundColor: appColor().background,
          }}
        >
          <ThemedView
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
            <ThemedText type="title">{props.title}</ThemedText>
          </ThemedView>

          {props.subtitle && (
            <ThemedView style={{ marginBottom: 40 }}>
              <ThemedText type="defaultSemiBold">{props.subtitle}</ThemedText>
            </ThemedView>
          )}
          {props.children}
          <InputButton
            title={props.btnTitle}
            onPress={props.onPress}
            style={{ marginBottom: 20 }}
          />
          {props.bottomComp && props.bottomComp}
          <ThemedText type="default" style={{ marginBottom: 5 }}>
            {props.bottomText}
          </ThemedText>
          {props.linkHref && props.linkText && (
            <Link href={props.linkHref}>
              <ThemedText type="link">{props.linkText}</ThemedText>
            </Link>
          )}
        </ThemedView>
      </ScrollView>
    </SafeAreaView>
  );
}
