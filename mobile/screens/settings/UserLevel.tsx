import { TView, TText } from "@/components";
import { useColor } from "@/lib/color";

export function UserLevel() {
  const appColor = useColor();
  return (
    <TView
      style={{
        backgroundColor: appColor.primary,
        paddingHorizontal: 15,
        paddingVertical: 6,
        borderRadius: 10,
        marginTop: 10,
      }}
    >
      <TText>Level 3</TText>
    </TView>
  );
}
