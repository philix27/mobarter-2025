import { useQuery } from "@tanstack/react-query";
import { IOperators } from "./OperatorsData";
import axios from "axios";
import { IUtilityBillData } from "./ElectricityBill";
import { GiftCardsResult } from "./GiftCards";
import { GiftCardCategoryData } from "./GiftCategories";
import { IBank, IChainMetadata, IToken } from "./bank";

const api = axios.create({
  baseURL: process.env.EXPO_PUBLIC_MINI_SERVER || "http://172.20.10.4:4000",
  // baseURL: 'https://api.example.com',
});

export const useGiftCardProviders = (productCategoryId: string) =>
  useQuery({
    queryKey: ["getGiftCardProducts"],
    queryFn: async () => {
      const res = await api.get(`/api/gift-cards/products`, {
        params: {
          productCategoryId,
        },
      });
      const fmtResult = res.data as GiftCardsResult;
      return fmtResult.content;
    },
  });

export const useGetBundlesOperator = (countryIso: string) =>
  useQuery({
    queryKey: ["getBundlesOperator"],
    queryFn: async () => {
      const res = await api.get(`/api/operator-bundles/${countryIso}`);
      return res.data as IOperators[];
    },
  });

export const useGetDataOperator = (countryIso: string) =>
  useQuery({
    queryKey: ["getDataOperator"],
    queryFn: async () => {
      const res = await api.get(`/api/operator-data/${countryIso}`);
      return res.data as IOperators[];
    },
  });

export const useGetElectricityBillers = (countryIso: string) =>
  useQuery({
    queryKey: ["useGetElectricityBillers"],
    queryFn: async () => {
      countryIso;
      const res = await api.get(`/api/bills/billers`);
      const fmtResult = res.data as IUtilityBillData;
      return fmtResult.content;
    },
  });

export const useGetGiftCardProduct = (productCategoryId: string) =>
  useQuery({
    queryKey: ["useGetGiftCardProduct"],
    queryFn: async () => {
      const res = await api.get(`/api/gift-cards/products`, {
        params: {
          productCategoryId,
        },
      });
      const fmtResult = res.data as GiftCardsResult;
      return fmtResult.content;
    },
  });

export const useGetGiftCardCategories = () =>
  useQuery({
    queryKey: ["useGetGiftCardCategories"],
    queryFn: async () => {
      const res = await api.get(`/api/gift-cards/categories`);
      const fmtResult = res.data as GiftCardCategoryData;
      return fmtResult;
    },
  });
export const useGetBanks = () =>
  useQuery({
    queryKey: ["useGetBanks"],
    queryFn: async () => {
      const res = await api.get(`/api/banks`);
      return res.data as IBank[];
    },
  });

export const useGetTokens = (address: string) =>
  useQuery({
    queryKey: ["useGetTokens"],
    queryFn: async () => {
      const res = await api.get(`/api/tokens`, { params: { address } });
      return res.data as IToken[];
    },
  });
export const useGetChains = () =>
  useQuery({
    queryKey: ["useGetChains"],
    queryFn: async () => {
      const res = await api.get(`/api/chains`);
      return res.data as IChainMetadata[];
    },
  });
