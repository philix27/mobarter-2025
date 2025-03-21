/**
 * Below are the colors that are used in the app. The colors are defined in the light and dark mode.
 * There are many other ways to style your app. For example, [Nativewind](https://www.nativewind.dev/), [Tamagui](https://tamagui.dev/), [unistyles](https://reactnativeunistyles.vercel.app), etc.
 */

const tintColorLight = "#0a7ea4";
const tintColorDark = "#fff";

type IColorStruct = {
  text: string;
  background: string;
  foreground: string;
  muted: string;
  mutedForeground: string;
  tint: string;
  icon: string;
  tabIconDefault: string;
  tabIconSelected: string;
  card: string;
  cardForeground: string;
  primary: string;
  primaryForeground: string;
  secondary: string;
  secondaryForeground: string;
  accent: string;
  accentForeground: string;
  destructive: string;
  destructiveForeground: string;
  border: string;
  input: string;
};

const lightColors: IColorStruct = {
  text: "#363738",
  background: "#D4CDC3",
  tint: tintColorLight,
  icon: "#687076",
  tabIconDefault: "#687076",
  tabIconSelected: tintColorLight,
  card: "#F0F0F0",
  foreground: "",
  muted: "#363738",
  mutedForeground: "",
  cardForeground: "",
  primary: "#ff6719",
  primaryForeground: "",
  secondary: "#ff6719",
  secondaryForeground: "",
  accent: "#E0E1E2",
  accentForeground: "",
  destructive: "red",
  destructiveForeground: "white",
  border: "#363738",
  input: "",
};

const darkColors: IColorStruct = {
  text: "#ECEDEE",
  background: "#171717",
  foreground: "#e3e6e6;",
  // foreground: "#e3e6e6;",
  card: "#2f2f2f",
  tint: tintColorDark,
  icon: "#9BA1A6",
  tabIconDefault: "#9BA1A6",
  tabIconSelected: tintColorDark,
  muted: "#717171",
  mutedForeground: "#292828",
  cardForeground: "#ECEDEE",
  primary: "#ff6719",
  primaryForeground: "",
  secondary: "#D77E51BC",
  secondaryForeground: "",
  accent: "#222525",
  accentForeground: "",
  destructive: "#d00000",
  destructiveForeground: "#fff",
  border: "#717171",
  input: "",
};

export const Colors: Record<"light" | "dark", IColorStruct> = {
  light: lightColors,
  dark: darkColors,
};
