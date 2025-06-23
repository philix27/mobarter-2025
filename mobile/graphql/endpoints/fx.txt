import { useQuery } from '@tanstack/react-query'
import { FxRate_GetAllQuery } from '../__generated__/graphql'
import axios from 'axios'

const Docs = `
query FxRate_GetAll {
    fxRate_GetAll {
              GH
              NG
              KE
              UG
              MW
              TZ
              ZA
              USD
              EUR
            }
}`

const token = process.env.EXPO_PUBLIC_SERVER_TEST_TOKEN

export const useFxRate = () =>
  useQuery({
    queryKey: ['useFxRate'],
    queryFn: async () => {
      const res = await axios.post(
        'http://172.20.10.4:4545/graphql',
        {
          query: Docs,
        },
        {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        }
      )

      const d = res.data
      // axios.post("", {}, {})
      // console.log(res);
      // return res.data;
      // return d;
      return d as { data: FxRate_GetAllQuery }
      // return d as { data: { fxRate_GetAll: Query['fxRate_GetAll'] } };
      // return res.data as Query['fxRate_GetAll'];
      // return res.data.data.fxRate_GetAll as QueryResponse<'fxRate_GetAll'>;
    },
  })

// export const useGetCountries = () =>
//   useQuery({
//     queryKey: ['useGetCountries'],
//     queryFn: async () => {
//       const res = await axios.post('http://172.20.10.4:4545/graphql', {
//         query: FxRate_GetAllDocument,
//         variables,
//       });
//       return res.data as ICountriesData[];
//     },
//   });
