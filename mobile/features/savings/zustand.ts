import AsyncStorage from '@react-native-async-storage/async-storage'
import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'

export type ITabs = 'CREATE' | 'VIEW'
export type IFixedDepositItem = {
  title: string
  amount: string
  currency: string
  duration: string
  interestRate: string
}
export interface ISlice {
  fixedDepositTab?: ITabs
  lockedSavingsTab?: ITabs
  flexibleDepositTab?: ITabs
  fixedDepositList?: IFixedDepositItem[]
}

export const defaultValues: Required<ISlice> = {
  fixedDepositTab: 'CREATE',
  lockedSavingsTab: 'CREATE',
  flexibleDepositTab: 'CREATE',
  fixedDepositList: []
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
