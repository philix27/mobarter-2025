import axios from 'axios'

import { IUtilityBillData } from './ElectricityBill'
import { GiftCardsResult } from './GiftCards'
import { GiftCardCategoryData } from './GiftCategories'
import { IOperators } from './OperatorsData'

export async function getBundlesOperator(countryIso: string) {
  const res = await axios.get(`/api/operator-bundles/${countryIso}`)
  return res.data as IOperators[]
}

export async function getDataOperator(countryIso: string) {
  const res = await axios.get(`/api/operator-data/${countryIso}`)
  return res.data as IOperators[]
}

export async function getElectricityBillers(countryIso: string) {
  countryIso
  const res = await axios.get(`/api/bills/billers`)
  const fmtResult = res.data as IUtilityBillData
  return fmtResult.content
}
export async function getGiftCardProducts(productCategoryId: string) {
  const res = await axios.get(`/api/gift-cards/products`, {
    params: {
      productCategoryId,
    },
  })
  const fmtResult = res.data as GiftCardsResult
  return fmtResult.content
}

export async function getGiftCardCategories() {
  const res = await axios.get(`/api/gift-cards/categories`)
  const fmtResult = res.data as GiftCardCategoryData
  return fmtResult
}

export * from './ElectricityBill'
export * from './OperatorsData'
export * from './getAccountInfo'
export * from './getTxn'
export * from './GiftCards'
