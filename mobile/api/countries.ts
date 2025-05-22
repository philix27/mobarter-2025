import { useQuery } from '@tanstack/react-query';
import { api } from './instance';

export type ICountriesData = {
  isoName: string;
  name: string;
  continent: string;
  currencyCode: string;
  currencyName: string;
  currencySymbol: string;
  flag: string;
  callingCodes: string;
};

export const useGetCountries = () =>
  useQuery({
    queryKey: ['useGetCountries'],
    queryFn: async () => {
      const res = await api.get(`/api/countries`);
      return res.data as ICountriesData[];
    },
  });
