// Should mostly match tailwind.config.js
export enum Color {
  mentoGreen = "#19D88A",
  mentoGreen600 = "#16c27c",
  celoGreen = "#35D07F",
  celoGold = "#FBCC5C",
  usdcBlue = "#2775CA",

  primaryBlack = "#2E3338",
  primaryBlack50 = "#939799",
  primaryWhite = "#FFFFFF",
  primaryGrey = "#9CA4A9",

  primaryGreengray = "#DEE8E2",
  greengrayLight = "#F0F5F3",
  greengrayLighter = "#F6F9F8",
  greengrayLightest = "#F9FAFA",

  borderInactive = "#DDDDDD",
  borderActive = "rgba(46, 51, 56, 0.8)",
  borderLight = "#F3F3F3",
  borderMedium = "#EDEEEF",
  borderError = "#E53935",
}

type ITheme = {
  bg: string;
  text: string;
  primary: string;
  muted: string;
  secondary: string;
  accent: string;
  border: string;
  destructive: string;
  card: string;
};

type IThemeColor = {
  light: ITheme;
  dark: ITheme;
};
export const ThemeColor: IThemeColor = {
  light: {
    bg: "",
    text: "",
    primary: "",
    card: "",
    muted: "",
    secondary: "",
    accent: "",
    border: "",
    destructive: "",
  },
  dark: {
    bg: "#18222e",
    text: "#ffffff",
    primary: "#ff6719",
    muted: "#717171",
    card: "#1c2937",
    secondary: "#282828",
    accent: "#222525",
    border: "#454547",
    destructive: "#d00000",
  },
};
