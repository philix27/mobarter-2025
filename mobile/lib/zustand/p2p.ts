import AsyncStorage from "@react-native-async-storage/async-storage";
import { create } from "zustand";
import { createJSONStorage, persist } from "zustand/middleware";

export type IViews = "BUY" | "SELL";

export interface ISlice {
  activeTab?: IViews;
}

export const defaultValues: Required<ISlice> = {
  activeTab: "BUY",
};

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void;
  clear: () => void;
}

export const useP2P= create(
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
