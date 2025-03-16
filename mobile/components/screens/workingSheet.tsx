import { SafeAreaView, StyleSheet, Text } from "react-native";
import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
import { BottomSheetView } from "@gorhom/bottom-sheet";
import { appColor } from "@/lib/color";
import InputButton from "@/components/forms/Button";
import { AppBottomSheet, useAppBottomSheet } from "./AppBottomSheet";

export default function ServicesScreen() {
  const {
    handleDismiss,
    handlePresent,
    ref: btmSheetRef,
  } = useAppBottomSheet();

  return (
    <SafeAreaView
      style={{
        height: "100%",
        backgroundColor: appColor().background,
      }}
    >
      <TView style={{ paddingHorizontal: 20 }}>
        <TView>
          <TText type="defaultSemiBold">Hello</TText>
          <TText type="default" style={{ fontSize: 13 }}>
            Performance
          </TText>
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
        </TView>
      </TView>

      <AppBottomSheet ref={btmSheetRef}>
        <BottomSheetView style={styles.contentContainer}>
          <Text>Awesome 🎉</Text>

          <TView>
            <TText type="defaultSemiBold">Hello</TText>
            <TText type="default" style={{ fontSize: 13 }}>
              Performance
            </TText>
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
          </TView>
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
