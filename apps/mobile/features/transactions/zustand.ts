import AsyncStorage from '@react-native-async-storage/async-storage'
import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'

export type ITabs = 'ORDERS' | 'TRANSACTIONS'

export interface ISlice {
  activeTab?: ITabs
}

export const defaultValues: Required<ISlice> = {
  activeTab: 'ORDERS',
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const useTransactions = create(
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
      name: 'transactions',
      storage: createJSONStorage(() => AsyncStorage),
    }
  )
)
