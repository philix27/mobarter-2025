import { useQuery } from '@apollo/client'
import { Static_GetTokensDocument } from '../__generated__/graphql'
import { QueryResponse } from './types'

export const useStatic_GetTokens = () =>
  useQuery<QueryResponse<'static_getTokens'>>(Static_GetTokensDocument)
