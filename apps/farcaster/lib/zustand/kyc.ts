import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'

export type IModals =
  | 'VERIFY_PHONE'
  | 'VERIFY_EMAIL'
  | 'VERIFY_PERSONAL'
  | 'VERIFY_BVN'
  | 'VERIFY_NIN'
  | 'VERIFY_SELF_PROTOCOL'
  | 'NONE'

export interface ISlice {
  modals?: IModals
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const defaultValues: Required<ISlice> = {
  modals: 'NONE',
}

export const useKyc = create(
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
