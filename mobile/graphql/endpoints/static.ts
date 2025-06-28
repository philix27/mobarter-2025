import { useQuery } from '@apollo/client'
import {
  Static_FundCollectorsResponse,
  Static_GetChainDocument,
  Static_GetCountryDocument,
  Static_GetLinksDocument,
  Static_GetTokensDocument,
} from '../__generated__/graphql'
import { QueryResponse } from './types'
import { Static_GetFundCollectorsDocument } from '../__generated__/graphql'

export const useStatic_GetTokens = () =>
  useQuery<QueryResponse<'static_getTokens'>>(Static_GetTokensDocument)

export const useStatic_GetLinks = () =>
  useQuery<QueryResponse<'static_getLinks'>>(Static_GetLinksDocument)

export const useStatic_GetCountries = () =>
  useQuery<QueryResponse<'static_getCountries'>>(Static_GetCountryDocument)

export const useStatic_GetChains = () =>
  useQuery<QueryResponse<'static_getChains'>>(Static_GetChainDocument)

export const useStatic_Collectors = (category: keyof Static_FundCollectorsResponse) => {
  const DEFAULT_COLLECTOR = '0xe6b6aAe8fA2718F5371e30F2ad2eEDa250801BB5'
  
  const response = useQuery<QueryResponse<'static_getFundCollectors'>>(
    Static_GetFundCollectorsDocument
  )

  if (response.error) {
    return DEFAULT_COLLECTOR
  }

  const collectors = response.data?.static_getFundCollectors

  if (collectors === null || collectors === undefined) {
    return DEFAULT_COLLECTOR
  }

  return collectors[category] ?? DEFAULT_COLLECTOR
}
