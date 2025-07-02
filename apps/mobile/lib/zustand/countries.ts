import { Country, Static_GetCountries } from '@/graphql'
import AsyncStorage from '@react-native-async-storage/async-storage'
import { create } from 'zustand'
import { createJSONStorage, persist } from 'zustand/middleware'

export interface ISlice {
  countries?: Country[]
  activeCountry?: Static_GetCountries | null
  activeIso?: string
}
export const defaultValues: Required<ISlice> = {
  countries: [],
  activeIso: 'NG',
  activeCountry: {
    isoName: Country.Ng,
    name: 'Nigeria',
    continent: 'Africa',
    currencyCode: 'NGN',
    currencyName: 'Nigerian Naira',
    currencySymbol: '₦',
    flag: 'https://s3.amazonaws.com/rld-flags/ng.svg',
    callingCodes: '+234',
  },
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
