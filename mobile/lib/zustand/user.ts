import AsyncStorage from "@react-native-async-storage/async-storage";
import { create } from "zustand";
import { createJSONStorage, persist } from "zustand/middleware";

export interface ISlice {
  email: string;
  firstname: string;
  lastname: string;
  middlename: string;
  token: string;
}

export const defaultValues: Required<ISlice> = {
  email: "",
  firstname: "",
  lastname: "",
  middlename: "",
  token: "",
};

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void;
  clear: () => void;
}

export const useUserInfo = create(
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
      name: "user_info",
      storage: createJSONStorage(() => AsyncStorage),
    }
  )
);
