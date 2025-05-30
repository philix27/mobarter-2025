import AsyncStorage from '@react-native-async-storage/async-storage'
import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'

export type ITabs = 'CREATE' | 'VIEW'

export interface ISlice {
  fixedDepositTab?: ITabs
  lockedSavingsTab?: ITabs
  flexibleDepositTab?: ITabs
}

export const defaultValues: Required<ISlice> = {
  fixedDepositTab: 'CREATE',
  lockedSavingsTab: 'CREATE',
  flexibleDepositTab: 'CREATE'
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const useSavings = create(
  persist<ISliceUpdate>(
    (set) => ({
      ...defaultValues,
      update: (data) =>
        set((state) => {
          return { ...state, ...data }
        }),
      clear: () =>
        set((state) => {
          return { ...state, ...defaultValues }
        }),
    }),
    {
      name: 'savings',
      storage: createJSONStorage(() => AsyncStorage),
    }
  )
)
