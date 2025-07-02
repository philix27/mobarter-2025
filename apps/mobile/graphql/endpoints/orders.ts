import { useMutation, useQuery } from '@apollo/client'
import {
  QueryOrders_GetAllArgs,
  Orders_GetAllDocument,
  Order_GetAllInput,
  Orders_CreateSellDocument,
  MutationOrders_CreateSellArgs,
} from '../__generated__/graphql'
import { MutationResponse, QueryResponse } from './types'

export const useGetOrders = (input: Order_GetAllInput) =>
  useQuery<QueryResponse<'orders_GetAll'>, QueryOrders_GetAllArgs>(Orders_GetAllDocument, {
    pollInterval: 2000,
    variables: {
      input: input!,
    },
  })

export const useCreateSellOrder = () => {
  return useMutation<MutationResponse<'orders_CreateSell'>, MutationOrders_CreateSellArgs>(
    Orders_CreateSellDocument
  )
}

