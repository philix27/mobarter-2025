import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'

export type IViews = 'INBOX' | 'BOTS' | 'GROUPS' | 'MARKET'
export type IBots = 'General' | 'DeFi' | 'WEB3'

export interface ISlice {
  activeScreen?: IViews
  activeBot?: IBots
  activePersonalChat?: string
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const defaultValues: Required<ISlice> = {
  activeScreen: 'INBOX',
  activeBot: 'General',
  activePersonalChat: '',
}
export const useView = create(
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
      name: 'screens',
      storage: createJSONStorage(() => localStorage),
    },
  ),
)
