import { useQuery } from '@tanstack/react-query';
import { FxRate_GetAllQuery } from '../__generated__/graphql';
import axios from 'axios';

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
}`;

const token =
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImVtYWlsIjp7ImlkIjoxLCJhZGRyZXNzIjoiMHgyMEY1MGI4ODMyZjg3MTA0ODUzZGYzRmREQTQ3RGQ0NjRmODg1YTQ5Iiwid2FsbGV0X2lkIjpudWxsLCJjaGFpblR5cGUiOiJFdGhlcmV1bSIsIm1pbmlwYXkiOnRydWUsImNyZWF0ZWRfYXQiOiIyMDI1LTA1LTA0VDEyOjQ4OjQ2Ljg2NVoiLCJ1cGRhdGVkX2F0IjoiMjAyNS0wNS0wNFQxMjo0ODo0Ni44NjVaIiwidXNlcl9pZCI6MX0sImlhdCI6MTc0NzgwMjg2MSwiZXhwIjoxNzQ3OTc1NjYxfQ.XmiPSITHR4SRXhpE4DIPpK20aD2YIwP5ayKkyYo0ciw';

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
        },
      );

      const d = res.data;
      // axios.post("", {}, {})
      // console.log(res);
      // return res.data;
      // return d;
      return d as { data: FxRate_GetAllQuery };
      // return d as { data: { fxRate_GetAll: Query['fxRate_GetAll'] } };
      // return res.data as Query['fxRate_GetAll'];
      // return res.data.data.fxRate_GetAll as QueryResponse<'fxRate_GetAll'>;
    },
  });

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
