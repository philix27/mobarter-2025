import { Colors } from "@/constants/Colors";
import { useContext } from "react";
import { ThemeContext } from "./providers";

export const useColor = () => {
  // const c = useTheme()
  // const apColor = Colors[colorScheme ?? "light"];
  // const colorScheme = Appearance.getColorScheme();
  const { theme } = useContext(ThemeContext);
  const themeKey = theme === "dark" ? "dark" : "light";
  const apColor = Colors[themeKey];
  return apColor;
};
