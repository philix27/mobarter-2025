import { ICountriesData } from '@/api/countries'
import AsyncStorage from '@react-native-async-storage/async-storage'
import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'

export interface ISlice {
  countries?: ICountriesData[]
  activeCountry?: ICountriesData | null
  activeIso?: string
}
export const defaultValues: Required<ISlice> = {
  countries: [],
  activeIso: 'NG',
  activeCountry: null,
}

export interface ISliceUpdate extends Required<ISlice> {
  update: (data: ISlice) => void
  clear: () => void
}

export const useCountries = create(
  persist<ISliceUpdate>(
    (set) => ({
      ...defaultValues,
      update: (data) =>
        set((state) => {
          return { ...state, ...data }
        }),
      clear: () =>
        set((state) => {
          return { ...state, countries: [], activeIso: 'NG' }
        }),
    }),
    {
      name: 'countries',
      storage: createJSONStorage(() => AsyncStorage),
    }
  )
)
