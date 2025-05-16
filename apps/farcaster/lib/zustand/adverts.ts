import { create } from 'zustand'
import { persist } from 'zustand/middleware'

export type IViews = 'BUY' | 'SELL'
export type ISteps = '1EnterDetails' | '2ConfirmDetails'

export interface ISlice {
  tradeType?: IViews
  steps?: ISteps
  amountFiat?: number
  amountCrypto?: number
  bankName?: string
  accountName?: string
  accountNo?: string
}

export const defaultValues: Required<ISlice> = {
  tradeType: 'BUY',
  steps: '1EnterDetails',
  amountFiat: 0,
  amountCrypto: 0,
  bankName: '',
  accountName: '',
  accountNo: '',
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
    }
  )
)
