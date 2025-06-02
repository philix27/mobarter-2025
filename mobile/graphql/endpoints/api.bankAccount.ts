import { useQuery } from '@apollo/client'
import { BankAccount_GetAllDocument } from '../__generated__/graphql'
import { QueryResponse } from './types'

export const useBankAccountList = () =>
  useQuery<QueryResponse<'bankAccount_getAll'>>(BankAccount_GetAllDocument)
