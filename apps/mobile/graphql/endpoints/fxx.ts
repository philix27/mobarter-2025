import { useQuery } from '@apollo/client'
import { FxRate_GetAllDocument } from '../__generated__/graphql'
import { QueryResponse } from './types'

export const useFxRates = () => useQuery<QueryResponse<'fxRate_GetAll'>>(FxRate_GetAllDocument)
