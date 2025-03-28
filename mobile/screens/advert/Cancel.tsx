import { TView, TText } from "@/components";
import InputButton from "@/components/forms/Button";
import InputText from "@/components/forms/InputText";
import Wrapper from "@/components/Wrapper";
import { useColor } from "@/lib/color";
import { Line, SectionTitle, SectionDesc, Row } from "./comps";
import { AppStores } from "@/lib";

export function CancelView() {
  const theme = useColor();
  const store = AppStores.useAdvert();
  return (
    <TView style={{ width: "100%" }}>
      <SectionTitle text="Amount" />

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
          Layout children must be of type Screen, all other children are
          ignored. To use custom children, create a custom
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
        <Row title1="Name" title2="An" />
        <Line bg={theme.background} />
        <Row title1="Price per cUSD" title2="An" />
        <Line bg={theme.background} />
        <Row title1="Status" title2="An" />
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
          store.update({});
        }}
      />
    </TView>
  );
}
