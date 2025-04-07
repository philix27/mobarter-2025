import { create } from 'zustand';
import { persist } from 'zustand/middleware';


export type IViews = 'PENDING' | 'COMPLETED' | 'CANCELED' | 'APPEAL'
export type ISteps = '1EnterDetails' | '2ConfirmDetails'

export interface ISlice {
  tabs?: IViews
  steps?: ISteps
}

export const defaultValues: Required<ISlice> = {
  tabs: 'PENDING',
  steps: '1EnterDetails',
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const useOrder = create(
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
      name: 'orders',
    }
  )
)