import * as Clipboard from "expo-clipboard";
import Toast from "react-native-toast-message";

export const ClipboardSet = async (text: string) => {
  await Clipboard.setStringAsync(text).then(() => {
    Toast.show({
      type: "success",
      text1: "Copied",
    });
  });
};
export const ClipboardGet = async () => {
  const text = await Clipboard.getStringAsync();
  return text;
};
