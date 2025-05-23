import { useMutation, useQuery } from '@apollo/client'
import {
  FxRate_GetAllDocument,
  MutationUtility_PurchaseAirtimeArgs,
  MutationUtility_PurchaseDataBundleArgs,
  Utility_PurchaseAirtimeDocument,
  Utility_PurchaseDataBundleDocument,
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
