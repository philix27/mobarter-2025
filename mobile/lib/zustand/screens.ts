import AsyncStorage from "@react-native-async-storage/async-storage";
import { create } from "zustand";
import { createJSONStorage, persist } from "zustand/middleware";

export type IViews = "INBOX" | "BOTS" | "GROUPS" | "MARKET";
export type IAssets = "Crypto" | "Fiat";
export type IWalletQrCode = "Ethereum" | "Fiat" | "Services";
export type IBots = "General" | "DeFi" | "WEB3";

export interface ISlice {
  activeScreen?: IViews;
  activeViewAsset?: string | "ALL";
  activeBot?: IBots;
  activePersonalChat?: string;
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void;
  clear: () => void;
}

export const defaultValues: Required<ISlice> = {
  activeScreen: "INBOX",
  activeBot: "General",
  activePersonalChat: "",
  activeViewAsset: "Crypto",
};
export const useView = create(
  persist<ISliceUpdate>(
    (set) => ({
      ...defaultValues,
      update: (data) =>
        set((state) => {
          return { ...state, ...data };
        }),
      clear: () =>
        set((state) => {
          return { ...state, ...defaultValues };
        }),
    }),
    {
      name: "screens",
      storage: createJSONStorage(() => AsyncStorage),
    }
  )
);
