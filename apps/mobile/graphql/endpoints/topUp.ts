import { OperationVariables, QueryHookOptions, useQuery } from '@apollo/client'
import {
  Utility_GetTopUpOperatorsDocument,
  QueryUtility_GetTopUpOperatorsArgs,
} from '../__generated__/graphql'
import { QueryResponse } from './types'

export const useATopUpOperators = (
  options?:
    | QueryHookOptions<
        QueryResponse<'utility_getTopUpOperators'>,
        QueryUtility_GetTopUpOperatorsArgs
      >
    | undefined
) => {
  const res = useQuery<
    QueryResponse<'utility_getTopUpOperators'>,
    QueryUtility_GetTopUpOperatorsArgs
  >(Utility_GetTopUpOperatorsDocument, options)

  return res
}
