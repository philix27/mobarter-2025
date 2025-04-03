import AsyncStorage from "@react-native-async-storage/async-storage";
import { create } from "zustand";
import { createJSONStorage, persist } from "zustand/middleware";
import { Auth_LoginResponse, Country } from "../__generated__/graphql";

export interface ISlice extends Auth_LoginResponse {}

export const defaultValues: Required<ISlice> = {
  __typename: "Auth_LoginResponse",
  country: Country.Ghana,
  email: "",
  firstname: "",
  lastname: "",
  middlename: null,
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
