import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'

import { TokenId } from '../config/tokens'

// import { SwapFormValues, ToCeloRates } from 'src/features/swap/types'

export type AccountBalances = Record<TokenId, string>

export type ISwap = 'EXCHANGE' | 'CONFIRM'
export interface ISlice {
  showSlippage?: boolean
  showChart?: boolean
  swapSteps?: ISwap
  account_balances?: AccountBalances
  account_lastUpdated?: number | null
  // swap_formValues?: SwapFormValues | null
  // swap_toCeloRates?: ToCeloRates
  swap_showSlippage?: boolean
  swap_showChart?: boolean
  swap_confirmView?: boolean
}

export const defaultValues: Required<ISlice> = {
  showSlippage: false,
  showChart: false,
  swapSteps: 'EXCHANGE',
  account_balances: Object.values(TokenId).reduce((result, id) => {
    result[id] = '0'
    return result
  }, {} as AccountBalances),
  account_lastUpdated: null,
  // swap_formValues: null,
  // swap_toCeloRates: {},
  swap_showSlippage: false,
  swap_showChart: false,
  swap_confirmView: false,
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const useSwap = create(
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
      name: 'swap',
      storage: createJSONStorage(() => localStorage),
    }
  )
)
