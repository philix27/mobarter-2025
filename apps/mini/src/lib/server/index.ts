import axios from 'axios'

import { IUtilityBillData } from './ElectricityBill'
import { GiftCardsResult } from './GiftCards'
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
export async function getGiftCardProducts(countryIso: string) {
  countryIso
  const res = await axios.get(`/api/gift-cards`)
  const fmtResult = res.data as GiftCardsResult
  return fmtResult.content
}

export * from './ElectricityBill'
export * from './OperatorsData'
export * from './getAccountInfo'
export * from './getTxn'
export * from './GiftCards'
