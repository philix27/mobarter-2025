import { SafeAreaView, StyleSheet, Text } from "react-native";
import { ThemedText } from "@/components/ThemedText";
import { ThemedView } from "@/components/ThemedView";
import { appColor } from "@/lib/color";
import InputButton from "@/components/forms/Button";
import React, { useRef } from "react";
import { BottomSheetModal, BottomSheetView } from "@gorhom/bottom-sheet";
import { AppBottomSheet, useAppBottomSheet } from "../AppBottomSheet";

export default function ServicesScreen() {
  // ref
  const btmSheetRef = useRef<BottomSheetModal>(null);

  const { handleDismiss, handlePresent } = useAppBottomSheet(btmSheetRef);

  return (
    <SafeAreaView
      style={{
        height: "100%",
        backgroundColor: appColor().background,
      }}
    >
      <ThemedView style={{ paddingHorizontal: 20 }}>
        <ThemedView>
          <ThemedText type="defaultSemiBold">Hello</ThemedText>
          <ThemedText type="default" style={{ fontSize: 13 }}>
            Performance
          </ThemedText>
          <InputButton
            title={"Open"}
            onPress={() => {
              handlePresent();
            }}
          />
          <InputButton
            title={"Close"}
            onPress={() => {
              handleDismiss();
            }}
          />
        </ThemedView>
      </ThemedView>
      <AppBottomSheet ref={btmSheetRef}>
        <BottomSheetView style={styles.contentContainer}>
          <Text>Awesome 🎉</Text>

          <ThemedView>
            <ThemedText type="defaultSemiBold">Hello</ThemedText>
            <ThemedText type="default" style={{ fontSize: 13 }}>
              Performance
            </ThemedText>
            <InputButton
              title={"Open"}
              onPress={() => {
                handlePresent();
              }}
            />
            <InputButton
              title={"Close"}
              onPress={() => {
                handleDismiss();
              }}
            />
          </ThemedView>
        </BottomSheetView>
      </AppBottomSheet>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 24,
    justifyContent: "center",
  },
  contentContainer: {
    flex: 1,
    alignItems: "center",
    // backgroundColor: appColor().card,
  },
});
