import { View, type ViewProps } from "react-native";
import { useThemeColor } from "@/hooks/useThemeColor";
import { useColor } from "@/lib/color";

export type ThemedViewProps = ViewProps & {
  lightColor?: string;
  darkColor?: string;
};

export function TView({
  style,
  lightColor,
  darkColor,
  ...otherProps
}: ThemedViewProps) {
  const appColor = useColor();
  const backgroundColor = useThemeColor(
    { light: lightColor, dark: darkColor },
    "background"
  );

  return (
    <View
      style={[{ backgroundColor: appColor.background }, style]}
      {...otherProps}
    />
  );
}
