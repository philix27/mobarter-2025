import IconRound from "@/components/IconRound";
import { ThemedText } from "@/components/ThemedText";
import { ThemedView } from "@/components/ThemedView";
import { appColor } from "@/lib/color";
import React, { useRef, useState } from "react";
import { AppBottomSheet, useBottomSheet } from "../AppBottomSheet";
import { BottomSheetModal, useBottomSheetModal } from "@gorhom/bottom-sheet";

type IActiveModal = "SEND" | "RECEIVE" | "BUY" | "SELL" | "NONE";
export default function QuickActions() {
  const [activeModal, setActiveModal] = useState<IActiveModal>("NONE");

  const bottomSheetRef = useRef<BottomSheetModal>(null);
  // const sheet = useBottomSheet(bottomSheetRef);

  return (
    <>
      <ThemedView
        style={{
          paddingHorizontal: 30,
          marginVertical: 10,
          display: "flex",
          flexDirection: "row",
          justifyContent: "space-around",
          alignItems: "center",
          backgroundColor: appColor().background,
        }}
      >
        <IconRound
          icon="seal"
          title="Send"
          onPress={() => {
            setActiveModal("SEND");
          }}
        />
        <IconRound
          icon="seal"
          title="Receive"
          onPress={() => {
            bottomSheetRef.current?.expand();
            // sheet.expand!();
            // bottomSheetRef.current?.expand();
            setActiveModal("RECEIVE");
          }}
        />
        <IconRound
          icon="cube.transparent"
          title="Buy"
          onPress={() => {
            setActiveModal("BUY");
          }}
        />
        <IconRound
          icon="seal"
          title="Sell"
          onPress={() => {
            setActiveModal("SELL");
          }}
        />
      </ThemedView>
      {/* {activeModal === "RECEIVE" && ( */}
      <AppBottomSheet ref={bottomSheetRef}>
        <ThemedView style={{ backgroundColor: "pink" }}>
          <ThemedText>Receive</ThemedText>
          <ThemedText>Wallet address</ThemedText>
        </ThemedView>
      </AppBottomSheet>
      {/* )} */}
    </>
  );
}
