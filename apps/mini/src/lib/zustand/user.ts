import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'

export interface ISlice {
  walletAddress?: string
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const defaultValues: Required<ISlice> = {
  walletAddress: '',
}
export const useUser = create(
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
    }
  )
)
