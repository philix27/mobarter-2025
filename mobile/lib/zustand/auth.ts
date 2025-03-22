import AsyncStorage from "@react-native-async-storage/async-storage";
import { create } from "zustand";
import { createJSONStorage, persist } from "zustand/middleware";
import { Auth_CreateAccountInput, Country } from "../__generated__/graphql";

export interface ISlice extends Partial<Auth_CreateAccountInput> {
  sendEmailToken?: string
}

export const defaultValues: Required<ISlice> = {
  country: Country.Nigeria,
  email: "",
  firstname: "",
  lastname: "",
  middlename: "",
  password: "",
  sendEmailToken: ""
};

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void;
  clear: () => void;
}

export const useAuth = create(
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
      name: "auth_info",
      storage: createJSONStorage(() => AsyncStorage),
    }
  )
);
