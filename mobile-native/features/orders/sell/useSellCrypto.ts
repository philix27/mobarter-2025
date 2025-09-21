import {
  MutationResponse,
  MutationOrders_CreateSellArgs,
  Orders_CreateSellDocument,
} from '@/graphql'
import { useMutation } from '@apollo/client'

export const useSellCrypto = () =>
  useMutation<MutationResponse<'orders_CreateSell'>, MutationOrders_CreateSellArgs>(
    Orders_CreateSellDocument
  )
