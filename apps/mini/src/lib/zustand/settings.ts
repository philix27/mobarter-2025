import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'

import { CountriesIso } from '../countries'

export type IHomeTab = 'Balances' | 'Services'
export type IManageAdsTab = 'OPEN' | 'CLOSED' | 'ADD'
export type IP2PTabs = 'BUY' | 'SELL'
export type IOrdersTabs = 'PENDING' | 'COMPLETED' | 'CANCELED' | 'APPEAL'
export type IHomeBottomSheet =
  | 'WALLET'
  | 'SEND_CRYPTO'
  | 'WITHDRAW'
  | 'SELECT_COUNTRY'
  | 'SELECT_NETWORK'
  | 'AIRTIME'
  | 'GIFT_CARD'
  | 'SEND_TO_BANK'
  | 'FX_RATES'
  | 'NULL'
  | undefined
export type IHistoryTabs = 'ALL' | 'AIRTIME'
export type IProfileTabs = 'INFO' | 'ACTIONS' | 'BANK'
export type ISwap = 'EXCHANGE' | 'CONFIRM'

export interface ISlice {
  sidebarOpen?: boolean
  infoTabOpen?: boolean
  drawerIsOpen?: boolean
  showSupportModal?: boolean
  searchValue?: string
  manageAdsTab?: IManageAdsTab
  p2pTab?: IP2PTabs
  ordersTab?: IOrdersTabs
  homeTab?: IHomeTab
  homeBtmSheet?: IHomeBottomSheet
  historyTab?: IHistoryTabs
  profileTabs?: IProfileTabs
  swapSteps?: ISwap
  showSlippage?: boolean
  showChart?: boolean
  token?: boolean
  countryIso?: CountriesIso
  chainIcon?: string
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
  homeBtmSheet: 'NULL',
  historyTab: 'ALL',
  showSupportModal: false,
  profileTabs: 'INFO',
  swapSteps: 'EXCHANGE',
  showSlippage: false,
  showChart: false,
  token: false,
  countryIso: 'NG',
  chainIcon: '',
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
