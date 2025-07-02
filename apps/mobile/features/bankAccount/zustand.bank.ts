import { BankAccount_Response } from '@/graphql'
import AsyncStorage from '@react-native-async-storage/async-storage'
import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'

export interface ISlice {
  activeAccount?: BankAccount_Response | null
}
export const defaultValues: Required<ISlice> = {
  activeAccount: null,
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const useBankAccount = create(
  persist<ISliceUpdate>(
    (set) => ({
      ...defaultValues,
      update: (data) =>
        set((state) => {
          return { ...state, ...data }
        }),
      clear: () =>
        set((state) => {
          return { ...state, countries: [], activeIso: 'NG' }
        }),
    }),
    {
      name: 'bankAccount',
      storage: createJSONStorage(() => AsyncStorage),
    }
  )
)
