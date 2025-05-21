import React from "react";
import { TText } from "../TText";

export default function ErrMsg(props: { msg: string }) {
  return (
    <TText style={{ color: "red", fontSize: 12, margin: 0, padding: 0 }}>
      {props.msg}
    </TText>
  );
}
