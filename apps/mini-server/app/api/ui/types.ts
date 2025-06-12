export type ICompsTypes =
  | "Text"
  | "Row"
  | "View"
  | "InputText"
  | "Button"
  | "InputSelect";
import { ViewStyle, TextStyle } from "react-native";

export type IComp = Row | IText | InputButton | IView | InputSelect | InputText;

export type IText = {
  type: "Text";
  props: {
    style?: TextStyle;
    text: string;
  };
};

export type IView = {
  type: "View";
  props: {
    style: ViewStyle;
    children?: IComp[];
  };
};

export type InputButton = {
  type: "Button";
  props: {
    title: string;
    style?: ViewStyle;
    children?: IComp[];
    action?: string;
    target?: string;
    onPress?: {
      type: "submit" | "button";
      endpoint: string;
      method: "POST" | "DELETE" | "PUT";
    };
  };
};

export type InputSelect = {
  type: "InputSelect";
  props: {
    style: ViewStyle;
    items: { label: string; value: string }[];
    placeholder: string;
    name: string;
  };
};

export type InputText = {
  type: "InputText";
  props: {
    style?: ViewStyle;
    placeholder: string;
    name: string;
    rules: {
      required: true;
      pattern: "^\\S+@\\S+\\.\\S+$";
    };
  };
};

export type Row = {
  type: "Row";
  props: {
    style?: ViewStyle;
    title: string;
    desc?: string;
    imgUrl?: string;
    svgUrl?: string;
    bgColor?: string;
    action?: string;
    target?: string;
  };
};
