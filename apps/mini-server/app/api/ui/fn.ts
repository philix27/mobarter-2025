import { TextStyle } from "react-native";
import type {
  IText,
  IView,
  InputSelect,
  InputButton,
  InputText,
  Row,
} from "./types";

export const Fn = {
  Text(props: IText["props"]): IText {
    return {
      type: "Text",
      props,
    };
  },
  View(props: IView["props"]): IView {
    return {
      type: "View",
      props,
    };
  },
  InputSelect(props: InputSelect["props"]): InputSelect {
    return {
      type: "InputSelect",
      props,
    };
  },
  InputText(props: InputText["props"]): InputText {
    return {
      type: "InputText",
      props,
    };
  },
  InputButton(props: InputButton["props"]): InputButton {
    return {
      type: "Button",
      props,
    };
  },
  Row(props: Row["props"]): Row {
    return {
      type: "Row",
      props,
    };
  },
};
