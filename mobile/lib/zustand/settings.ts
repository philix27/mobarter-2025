import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'

export interface ISlice {
  drawerIsOpen?: boolean
  defaultCollapsed?: boolean
  defaultLayout?: number[]
  showCryptoModal?: boolean
  showTweetsModal?: boolean
  showMotivationModal?: boolean
  cryptoTabs?: 'WALLETS' | 'STATS'
}

export const defaultValues: Required<ISlice> = {
  drawerIsOpen: false,
  defaultCollapsed: false,
  defaultLayout: [],
  showCryptoModal: false,
  showTweetsModal: false,
  showMotivationModal: false,
  cryptoTabs: 'WALLETS',
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}
export const useSettings = create(
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
      name: 'settings',
      storage: createJSONStorage(() => localStorage),
    },
  ),
)
