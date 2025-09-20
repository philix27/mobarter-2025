import { useQuery } from '@apollo/client'
import { QueryResponse } from './types'
import { User_GetDocument } from '../__generated__/graphql'

export const useUserInfo = () =>
  useQuery<QueryResponse<'user_get'>>(User_GetDocument, { pollInterval: 60_000 })
