import { IToken } from '@/api'
import AsyncStorage from '@react-native-async-storage/async-storage'
import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'

export interface ISlice {
  tokens?: IToken[]
  activeToken?: IToken | null
}
export const defaultValues: Required<ISlice> = {
  tokens: [],
  activeToken: null,
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const useTokens = create(
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
      name: 'countries',
      storage: createJSONStorage(() => AsyncStorage),
    }
  )
)
