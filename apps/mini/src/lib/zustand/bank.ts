import { create } from 'zustand';
import { persist } from 'zustand/middleware';


export type IViews = 'BUY' | 'SELL'
export type ISteps = '1EnterDetails' | '2ConfirmDetails'

export interface ISlice {
  bankName?: string
  accountName?: string
  accountNo?: string
  bankCode?: string
}

export const defaultValues: Required<ISlice> = {
  bankName: '',
  accountName: '',
  accountNo: '',
  bankCode: ''
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const useBankAccount = create(
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
      name: 'bankAccount',
    }
  )
)