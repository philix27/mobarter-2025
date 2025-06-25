import { useQuery } from '@apollo/client'
import {
  Static_GetChainDocument,
  Static_GetCountryDocument,
  Static_GetLinksDocument,
  Static_GetTokensDocument,
} from '../__generated__/graphql'
import { QueryResponse } from './types'

export const useStatic_GetTokens = () =>
  useQuery<QueryResponse<'static_getTokens'>>(Static_GetTokensDocument)

export const useStatic_GetLinks = () =>
  useQuery<QueryResponse<'static_getLinks'>>(Static_GetLinksDocument)

export const useStatic_GetCountries = () =>
  useQuery<QueryResponse<'static_getCountries'>>(Static_GetCountryDocument)

export const useStatic_GetChains = () =>
  useQuery<QueryResponse<'static_getChains'>>(Static_GetChainDocument)
