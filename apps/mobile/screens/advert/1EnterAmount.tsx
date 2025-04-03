import { TView, TText } from "@/components";
import InputButton from "@/components/forms/Button";
import InputText from "@/components/forms/InputText";
import { useColor } from "@/lib/color";
import { Line, SectionTitle, SectionDesc, Row } from "./comps";
import { AppStores } from "@/lib";

export function EnterAmount() {
  const theme = useColor();
  const store = AppStores.useAdvert();
  return (
    <TView style={{ width: "100%" }}>
      <SectionTitle text="Amount" />
      <InputText
        placeholder="Amount"
        keyboardType="number-pad"
        style={{ margin: 0, padding: 0 }}
      />
      <SectionDesc
        text={
          "Only scammers offers communication and orders outside the P2P Market"
        }
      />

      <SectionTitle text="Instructions" />
      <TView
        style={{
          backgroundColor: theme.card,
          padding: 10,
          borderRadius: 4,
          alignItems: "center",
        }}
      >
        <TText>
         Merchant may have some specific instructions for the customer regarding payments.
        </TText>
      </TView>
      <SectionDesc
        text={
          "Only scammers offers communication and orders outside the P2P Market"
        }
      />

      <SectionTitle text="Seller details" />
      <TView
        style={{
          backgroundColor: theme.card,
          padding: 10,
          borderRadius: 4,
          alignItems: "center",
          // width: "100%",
        }}
      >
        <Row title1="Name" title2="Merchant1" />
        <Line bg={theme.background} />
        <Row title1="Price per cUSD" title2="NGN 1520" />
        <Line bg={theme.background} />
        <Row title1="Status" title2="Online" />
      </TView>
      <SectionDesc
        text={
          "Only scammers offers communication and orders outside the P2P Market"
        }
      />

      <InputButton
        title="Check Order"
        style={{ marginTop: 20 }}
        onPress={() => {
          store.update({
            steps: "2ConfirmOrderDetails",
          });
        }}
      />
    </TView>
  );
}
