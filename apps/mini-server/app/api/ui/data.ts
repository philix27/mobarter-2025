import { IComp } from "./types";
import { Fn } from "./fn";

export const uiData: Record<string, IComp> = {
  s: Fn.Text({
    text: "Settings",
    style: {
      padding: 20,
    },
  }),
  home: Fn.View({
    style: { alignItems: "center", width: "100%", rowGap: 10 },
    children: [
      Fn.InputText({
        placeholder: "Enter NIN",
        name: "NIN",
        style: { width: "100%" },
      }),
      Fn.InputText({
        placeholder: "Enter BVN",
        name: "BVN",
        style: { width: "100%" },
      }),
      Fn.Row({
        title: "Na me get am",
        desc: "Dickson Raymond",
      }),
      Fn.InputButton({
        title: "Click me",
      }),
    ],
  }),
};
