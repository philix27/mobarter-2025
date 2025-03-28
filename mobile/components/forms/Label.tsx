import React from "react";
import { TText } from "../TText";

export default function Label(props: { label: string }) {
  return (
    <TText style={[{ fontSize: 16, marginBottom: 10 }]} type="default">
      {props.label}
    </TText>
  );
}
