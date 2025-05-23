import { useQuery } from '@tanstack/react-query'
import { api } from './instance'
import { AppStores } from '@/lib'

export type ICountriesData = {
  isoName: string
  name: string
  continent: string
  currencyCode: string
  currencyName: string
  currencySymbol: string
  flag: string
  callingCodes: string
}

export const useGetCountries = () => {
  const store = AppStores.useCountries()
  return useQuery({
    queryKey: ['useGetCountries'],
    queryFn: async () => {
      if (store.countries.length > 0) {
        return store.countries
      }

      const res = await api.get(`/api/countries`)
      store.update({ countries: res.data })
      return res.data as ICountriesData[]
    },
  })
}
