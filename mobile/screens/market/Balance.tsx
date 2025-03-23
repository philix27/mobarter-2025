import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
import { useColor } from "@/lib/color";
import React from "react";
import { Text } from "react-native";

export default function Balance() {
  const appColor = useColor();
  return (
    <TView
      style={{
        marginBottom: 10,
        // backgroundColor: appColor.primary,
        width: "100%",
        borderRadius: 20,
        // padding: 20,
        height: 100,
        alignItems: "center",
        justifyContent: "center",
      }}
    >
      <Text style={{ fontSize: 30, color: appColor.text, fontWeight: 600 }}>
        98.03 cUSD
      </Text>
    </TView>
  );
}
