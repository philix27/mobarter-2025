import { useQuery } from '@tanstack/react-query';
import { api } from './instance';
export interface SocialLinks {
  title: string;
  link: string;
  logo: string;
  desc?: string;
}

export const useGetLinksSocial = () =>
  useQuery({
    queryKey: ['useGetLinksSocial'],
    queryFn: async () => {
      const res = await api.get(`/api/links/social`);
      return res.data as SocialLinks[];
    },
  });

export interface ILinkDocs {
  title: string;
  url: string;
  desc?: string;
}
export const useGetLinksDocs = () =>
  useQuery({
    queryKey: ['useGetLinksDocs'],
    queryFn: async () => {
      const res = await api.get(`/api/links/docs`);
      return res.data as ILinkDocs[];
    },
  });

export interface ILinksLearn {
  title: string;
  url: string;
  category?: 'BILL' | 'STAKE' | 'UTILITY' | 'FARM' | 'PAYMENTS';
  desc: string;
}

export const useGetLinksLearn = () =>
  useQuery({
    queryKey: ['useGetLinksLearn'],
    queryFn: async () => {
      const res = await api.get(`/api/links/learn`);
      return res.data as ILinksLearn[];
    },
  });
