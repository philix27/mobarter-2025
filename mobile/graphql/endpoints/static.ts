import { useQuery } from '@apollo/client'
import { Static_GetLinksDocument, Static_GetTokensDocument } from '../__generated__/graphql'
import { QueryResponse } from './types'

export const useStatic_GetTokens = () =>
  useQuery<QueryResponse<'static_getTokens'>>(Static_GetTokensDocument)

export const useStatic_GetLinks = () =>
  useQuery<QueryResponse<'static_getLinks'>>(Static_GetLinksDocument)
