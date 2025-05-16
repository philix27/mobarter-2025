import { TView, TText } from "@/components";
import { useColor } from "@/lib/color";

export const Line = (props: { bg: string }) => (
  <TView style={{ backgroundColor: props.bg, height: 1, width: "90%" }} />
);
export function Row(props: { title1: string; title2: string }) {
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

export function SectionTitle(params: { text: string }) {
  const theme = useColor();
  return (
    <TView>
      <TText style={{ fontSize: 13, color: theme.muted }}>
        {params.text.toUpperCase()}
      </TText>
    </TView>
  );
}
export function SectionDesc(params: { text: string }) {
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
