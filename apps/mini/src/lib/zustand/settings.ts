import { create } from 'zustand';
import { createJSONStorage, persist } from 'zustand/middleware';


export type IHomeTab = 'Balances' | 'Services'
export type IManageAdsTab = 'OPEN' | 'CLOSED' | 'ADD'
export type IP2PTabs = 'BUY' | 'SELL'
export type IOrdersTabs = 'PENDING' | 'COMPLETED' | 'CANCELED' | 'APPEAL'
export type IHomeBottomSheet = 'WALLET' | 'SEND_CRYPTO' | 'SWAP' | "NULL"| undefined
export interface ISlice {
  sidebarOpen?: boolean
  infoTabOpen?: boolean
  drawerIsOpen?: boolean
  searchValue?: string
  manageAdsTab?: IManageAdsTab
  p2pTab?: IP2PTabs
  ordersTab?: IOrdersTabs
  homeTab?: IHomeTab
  homeBtmSheet?: IHomeBottomSheet
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const defaultValues: Required<ISlice> = {
  drawerIsOpen: false,
  sidebarOpen: false,
  infoTabOpen: false,
  searchValue: '',
  manageAdsTab: 'OPEN',
  p2pTab: 'BUY',
  ordersTab: 'PENDING',
  homeTab: 'Balances',
  homeBtmSheet: "NULL",
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
    }
  )
)