import { TView, TText } from "@/components";
import InputButton from "@/components/forms/Button";
import InputText from "@/components/forms/InputText";
import HeaderBar from "@/components/Header";
import Wrapper from "@/components/Wrapper";
import { useColor } from "@/lib/color";
import { StyleSheet } from "react-native";

export default function Page() {
  const theme = useColor();
  return (
    <>
      <HeaderBar title="Orders" showBackBtn />
      <Wrapper>
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

          <InputButton title="Check Order" style={{ marginTop: 20 }} />
        </TView>
      </Wrapper>
    </>
  );
}

const Line = (props: { bg: string }) => (
  <TView style={{ backgroundColor: props.bg, height: 1, width: "90%" }} />
);
function Row(props: { title1: string; title2: string }) {
  const theme = useColor();
  return (
    <TView
      style={{
        flexDirection: "row",
        alignItems: "center",
        justifyContent: "space-between",
        paddingVertical: 10,
        paddingHorizontal: 12,
        backgroundColor: theme.card,
        width: "100%",
      }}
    >
      <TText>{props.title1}</TText>
      <TText>{props.title2}</TText>
    </TView>
  );
}

function SectionTitle(params: { text: string }) {
  const theme = useColor();
  return (
    <TView>
      <TText style={{ fontSize: 13, color: theme.muted }}>
        {params.text.toUpperCase()}
      </TText>
    </TView>
  );
}
function SectionDesc(params: { text: string }) {
  const theme = useColor();
  return (
    <TText
      style={{
        fontSize: 12,
        color: theme.muted,
        lineHeight: 17,
        marginBottom: 15,
        marginTop: 4,
        paddingHorizontal: 10,
      }}
    >
      {params.text}
    </TText>
  );
}

const styles = StyleSheet.create({
  desc: {
    fontSize: 12,
    lineHeight: 17,
    marginBottom: 15,
    marginTop: 4,
    paddingHorizontal: 10,
  },
});
