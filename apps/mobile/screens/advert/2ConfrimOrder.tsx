import { TView, TText } from "@/components";
import InputButton from "@/components/forms/Button";
import { useColor } from "@/lib/color";
import { Line, SectionTitle, SectionDesc, Row } from "./comps";
import { AppStores } from "@/lib";

export function ConfirmOrder() {
  const theme = useColor();
  const store = AppStores.useAdvert();
  return (
    <TView style={{ width: "100%", alignItems: "center" }}>
      <TText type="title">
        You are {store.tradeType === "BUY" ? "buying" : "selling"}
      </TText>
      <TText type="title">NGN 50,000</TText>
      <TText type="title"> at 35 cUSD</TText>
      <TView
        style={{
          backgroundColor: theme.card,
          padding: 10,
          borderRadius: 4,
          alignItems: "center",
          marginTop: 20
        }}
      >
        <TText>
          Please confirm the transaction if everything matches what you ordered.
        </TText>
      </TView>

      <TView
        style={{
          flexDirection: "row",
          gap: 20,
          alignItems: "center",
          justifyContent: "space-around",
        }}
      >
        <InputButton
          title="Back"
          variant="secondary"
          style={{ marginTop: 20 }}
          onPress={() => {
            store.update({
              steps: "1EnterAmount",
            });
          }}
        />
        <InputButton
          title="Next"
          style={{ marginTop: 20 }}
          onPress={() => {
            store.update({
              steps: "3ConfirmPayment",
            });
          }}
        />
      </TView>
    </TView>
  );
}
