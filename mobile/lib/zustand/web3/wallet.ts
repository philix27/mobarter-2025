import AsyncStorage from '@react-native-async-storage/async-storage'
import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'
import { IChains } from './type'

export interface ISlice {
  walletKey?: string
  address?: string | null
  chain?: IChains
}
export const defaultValues: Required<ISlice> = {
  walletKey: process.env.EXPO_PUBLIC_WALLET_KEY!,
  address: null,
  chain: 'CELO',
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const useWallet = create(
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
      name: 'wallet',
      storage: createJSONStorage(() => AsyncStorage),
    }
  )
)
