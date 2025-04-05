import { create } from 'zustand';
import { createJSONStorage, persist } from 'zustand/middleware';


export type IViews = 'BUY' | 'SELL'
export type IDisputes = 'Cancel' | 'Appeal' | ''
export type ISteps = '1EnterAmount' | '2ConfirmOrderDetails' | '3ConfirmPayment' | '4RateMerchant'

export interface ISlice {
  tradeType?: IViews
  steps?: ISteps | IDisputes
}

export const defaultValues: Required<ISlice> = {
  tradeType: 'BUY',
  steps: '1EnterAmount',
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const useAdvert = create(
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
      name: 'advert',
      storage: createJSONStorage(() => localStorage),
    }
  )
)