import { TView, TText } from "@/components";
import { useColor } from "@/lib/color";

export function CardRow(params: { title: string; subtitle: string }) {
  const theme = useColor();
  return (
    <TView
      style={{
        flexDirection: "row",
        justifyContent: "space-between",
        alignItems: "center",
        backgroundColor: theme.card,
        paddingVertical: 5,
        paddingHorizontal: 10,
      }}
    >
      <TText>{params.title}</TText>
      <TText>{params.subtitle}</TText>
    </TView>
  );
}
