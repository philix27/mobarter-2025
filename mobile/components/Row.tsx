import IconRound from "@/components/IconRound";
import { TText } from "@/components/TText";
import { TView } from "@/components/TView";
import { appColor } from "@/lib/color";
import { router } from "expo-router";
import { TouchableOpacity } from "react-native";

export default function Row(props: {
  title: string;
  desc: string;
  bgColor?: string;
  icon?: JSX.Element;
  onClick?: VoidFunction;
}) {
  const bgColor = appColor().accent;
  return (
    <TouchableOpacity
      style={{
        backgroundColor: bgColor,
        width: "100%",
        marginBottom: 5,
        padding: 10,
        borderRadius: 10,
      }}
      onPress={props.onClick}
    >
      <TView
        style={{
          backgroundColor: bgColor,
          flexDirection: "row",
        }}
      >
        {props.icon && (
          <IconRound
            style={{ marginRight: 10 }}
            onPress={() => {
              // router.push("/send");
            }}
          >
            {props.icon}
          </IconRound>
        )}

        <TView style={{ backgroundColor: bgColor }}>
          <TText type="defaultSemiBold">{props.title}</TText>
          <TText style={{ color: appColor().muted, fontSize: 13 }}>
            {props.desc}
          </TText>
        </TView>
      </TView>
    </TouchableOpacity>
  );
}
