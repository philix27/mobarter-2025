import { create } from 'zustand';
import { persist } from 'zustand/middleware';


export interface ISlice {
  selectedCategory?: string
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const defaultValues: Required<ISlice> = {
  selectedCategory: '1',
}
export const useGiftCard = create(
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
      name: 'useGiftCard',
      // storage: createJSONStorage(() => localStorage),
    }
  )
)