import { useQuery } from '@tanstack/react-query'
import { IOperators } from './OperatorsData'
import { IUtilityBillData } from './ElectricityBill'
import { GiftCardsResult } from './GiftCards'
import { GiftCardCategoryData } from './GiftCategories'
import { IBank, IChainMetadata, IToken } from './bank'
import { api } from './instance'
import { AppStores } from '@/lib'

export const useGiftCardProviders = (productCategoryId: string) =>
  useQuery({
    queryKey: ['getGiftCardProducts'],
    queryFn: async () => {
      const res = await api.get(`/api/gift-cards/products`, {
        params: {
          productCategoryId,
        },
      })
      const fmtResult = res.data as GiftCardsResult
      return fmtResult.content
    },
  })

export const useGetBundlesOperator = (countryIso: string) =>
  useQuery({
    queryKey: ['getBundlesOperator'],
    queryFn: async () => {
      const res = await api.get(`/api/operator-bundles/${countryIso}`)
      return res.data as IOperators[]
    },
  })

export const useGetDataOperator = (countryIso: string) =>
  useQuery({
    queryKey: ['getDataOperator'],
    queryFn: async () => {
      const res = await api.get(`/api/operator-data/${countryIso}`)
      return res.data as IOperators[]
    },
  })

export const useGetElectricityBillers = (countryIso: string) =>
  useQuery({
    queryKey: ['useGetElectricityBillers'],
    queryFn: async () => {
      countryIso
      const res = await api.get(`/api/bills/billers`)
      const fmtResult = res.data as IUtilityBillData
      return fmtResult.content
    },
  })

export const useGetGiftCardProduct = (productCategoryId: string) =>
  useQuery({
    queryKey: ['useGetGiftCardProduct'],
    queryFn: async () => {
      const res = await api.get(`/api/gift-cards/products`, {
        params: {
          productCategoryId,
        },
      })
      const fmtResult = res.data as GiftCardsResult
      return fmtResult.content
    },
  })

export const useGetGiftCardCategories = () =>
  useQuery({
    queryKey: ['useGetGiftCardCategories'],
    queryFn: async () => {
      const res = await api.get(`/api/gift-cards/categories`)
      const fmtResult = res.data as GiftCardCategoryData
      return fmtResult
    },
  })
export const useGetBanks = () =>
  useQuery({
    queryKey: ['useGetBanks'],
    queryFn: async () => {
      const res = await api.get(`/api/banks/get-list`)
      return res.data as IBank[]
    },
  })

export const useGetTokens = (address: string, country: string) => {
  const store = AppStores.useTokens()
  return useQuery({
    queryKey: ['useGetTokens'],
    queryFn: async () => {
      if (store.activeToken) {
        return store.tokens
      }

      const res = await api.get(`/api/tokens`, {
        params: { address, country },
      })

      store.update({ tokens: res.data })

      return res.data as IToken[]
    },
  })
}

export const useGetTokenBalance = (address: string, country: string) =>
  useQuery({
    queryKey: ['useGetTokenBalance'],
    queryFn: async () => {
      const res = await api.get(`/api/tokens/total-balance`, {
        params: { address, country },
      })
      return res.data as number
    },
  })

export const useGetChains = () =>
  useQuery({
    queryKey: ['useGetChains'],
    queryFn: async () => {
      const res = await api.get(`/api/chains`)
      return res.data as IChainMetadata[]
    },
  })
