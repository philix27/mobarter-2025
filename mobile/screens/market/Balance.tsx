import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
import { useColor } from "@/lib/color";
import React from "react";

export default function Balance() {
  return (
    <TView
      style={{
        marginTop: 10,
        marginBottom: 10,
        backgroundColor: appColor.primary,
        width: "auto",
        borderRadius: 20,
        padding: 20,
        height: 120,
      }}
    >
      <TText type="defaultSemiBold">Balance:</TText>
    </TView>
  );
}
