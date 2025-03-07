import { Colors } from "@/constants/Colors";
import { useColorScheme } from "react-native";

export const appColor = () => {
  // const colorScheme = useColorScheme();
  // const apColor = Colors[colorScheme ?? "light"];
  const apColor = Colors["dark"];
  return apColor;
};
