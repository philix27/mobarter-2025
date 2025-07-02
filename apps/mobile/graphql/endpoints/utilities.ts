import { useMutation, useQuery } from '@apollo/client'
import {
  FxRate_GetAllDocument,
  MutationUtility_PurchaseAirtimeArgs,
  MutationUtility_PurchaseDataBundleArgs,
  QueryTvBills_GetProvidersArgs,
  TvBills_GetBouquetDocument,
  TvBills_GetProvidersDocument,
  TvBills_MakePaymentDocument,
  TvBills_ValidateAccountDocument,
  Utility_PurchaseAirtimeDocument,
  Utility_PurchaseDataBundleDocument,
  FundBetting_MakePaymentDocument,
  MutationFundBetting_MakePaymentArgs,
  MutationTvBills_ValidateAccountArgs,
  MutationTvBills_MakePaymentArgs,
  FundBetting_GetProvidersDocument,
  QueryFundBetting_GetProvidersArgs,
  QueryTvBills_GetBouquetArgs,
  MutationElectricityBill_MakePaymentArgs,
  ElectricityBill_MakePaymentDocument,
  ElectricityBill_VerifyAccountDocument,
  MutationElectricityBill_VerifyAccountArgs,
  ElectricityBill_GetProvidersDocument,
  ElectricityBill_ProviderInput,
  QueryElectricityBill_GetProvidersArgs,
} from '../__generated__/graphql'
import { MutationResponse, QueryResponse } from './types'

export const usePurchaseAirtime = () => {
  return useMutation<
    MutationResponse<'utility_purchaseAirtime'>,
    MutationUtility_PurchaseAirtimeArgs
  >(Utility_PurchaseAirtimeDocument)
}

export const usePurchaseDataBundle = () => {
  return useMutation<
    MutationResponse<'utility_purchaseDataBundle'>,
    MutationUtility_PurchaseDataBundleArgs
  >(Utility_PurchaseDataBundleDocument)
}

export const useFxRates = () => useQuery<QueryResponse<'fxRate_GetAll'>>(FxRate_GetAllDocument)
// ! Electricity bill
export const useElectricityBillProviders = (variables: QueryElectricityBill_GetProvidersArgs) => {
  const res = useQuery<
    QueryResponse<'electricityBill_getProviders'>,
    QueryElectricityBill_GetProvidersArgs
  >(ElectricityBill_GetProvidersDocument, { variables })
  // console.log('Result X22', res.data?.electricityBill_getProviders)
  // console.log('Result X22', res.error)
  return res
}

export const useElectricBillVerifyAccount = () => {
  return useMutation<
    MutationResponse<'electricityBill_verifyAccount'>,
    MutationElectricityBill_VerifyAccountArgs
  >(ElectricityBill_VerifyAccountDocument)
}

export const useElectricBillMakePayment = () => {
  return useMutation<
    MutationResponse<'electricityBill_makePayment'>,
    MutationElectricityBill_MakePaymentArgs
  >(ElectricityBill_MakePaymentDocument)
}

// ! TV bill
export const useTV_GetProviders = (variables: QueryTvBills_GetProvidersArgs) => {
  const r = useQuery<QueryResponse<'tvBills_getProviders'>, QueryTvBills_GetProvidersArgs>(
    TvBills_GetProvidersDocument,
    { variables }
  )

  console.log('Result ', r.data)

  return r
}

export const useTV_GetBouquet = (variables: QueryTvBills_GetBouquetArgs) =>
  useQuery<QueryResponse<'tvBills_getBouquet'>, QueryTvBills_GetBouquetArgs>(
    TvBills_GetBouquetDocument,
    { variables }
  )

export const useTV_ValidateAccount = () => {
  return useMutation<
    MutationResponse<'tvBills_validateAccount'>,
    MutationTvBills_ValidateAccountArgs
  >(TvBills_ValidateAccountDocument)
}

export const useTV_MakePayment = () => {
  return useMutation<MutationResponse<'tvBills_makePayment'>, MutationTvBills_MakePaymentArgs>(
    TvBills_MakePaymentDocument
  )
}
// ! Fund Betting Wallet
export const useFundBetting_getProviders = (variables: QueryFundBetting_GetProvidersArgs) =>
  useQuery<QueryResponse<'fundBetting_getProviders'>, QueryFundBetting_GetProvidersArgs>(
    FundBetting_GetProvidersDocument,
    { variables }
  )

export const useFundBetting_MakePayment = () => {
  return useMutation<
    MutationResponse<'fundBetting_makePayment'>,
    MutationFundBetting_MakePaymentArgs
  >(FundBetting_MakePaymentDocument)
}
