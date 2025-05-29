import AsyncStorage from '@react-native-async-storage/async-storage'
import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'
import { IChains } from './type'

export interface ISlice {
  walletKey?: string
  address?: string | null
  chain?: IChains
  airtimeCollector?: string | null
  dataCollector?: string | null
  giftCardCollector?: string | null
  bettingCollector?: string | null
}
export const defaultValues: Required<ISlice> = {
  walletKey: process.env.EXPO_PUBLIC_WALLET_KEY!,
  address: null,
  chain: 'CELO',
  airtimeCollector: null,
  dataCollector: null,
  giftCardCollector: null,
  bettingCollector: null,
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
          return { ...state, countries: [] }
        }),
    }),
    {
      name: 'wallet',
      storage: createJSONStorage(() => AsyncStorage),
    }
  )
)
