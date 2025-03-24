import { TText, TView } from "@/components";
import React from "react";
import { data } from "./dummyData";
import { useColor } from "@/lib/color";
import { TouchableOpacity } from "react-native";
import { CardRow } from "./CardRow";

export default function ScreenSell() {
  const theme = useColor();
  return (
    <TView style={{ width: "100%" }}>
      {data.map((val, i) => (
        <TouchableOpacity
          key={i}
          style={{
            width: "100%",
            backgroundColor: theme.background,
            marginBottom: 10,
            borderRadius: 10,
            borderColor: theme.card,
            borderWidth: 3,
          }}
        >
          <TView
            style={{
              flexDirection: "row",
              justifyContent: "space-between",
              alignItems: "center",
              borderRadius: 10,
              paddingVertical: 8,
              paddingHorizontal: 10,
            }}
          >
            <TText type="default">{val.name}</TText>
            <TText type="subtitle">${val.rate}</TText>
          </TView>
          <CardRow title={"Status"} subtitle={val.status} />
          <CardRow title={"Balance"} subtitle={val.available.toString()} />
          <CardRow title={"Payment method"} subtitle={val.paymentMethod} />
          <CardRow
            title={"Range"}
            subtitle={`${val.limitLower} - ${val.limitUpper}`}
          />
        </TouchableOpacity>
      ))}
      <TView style={{ marginVertical: 100 }} />
    </TView>
  );
}
