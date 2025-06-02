import {
  BankAccount_CreateDocument,
  BankAccount_GetAllDocument,
  MutationBankAccount_CreateArgs,
  MutationResponse,
  QueryResponse,
} from '@/graphql'
import { useMutation, useQuery } from '@apollo/client'

export const useBankAccountList = () =>
  useQuery<QueryResponse<'bankAccount_getAll'>>(BankAccount_GetAllDocument)

export const useAddAcct = () =>
  useMutation<MutationResponse<'bankAccount_create'>, MutationBankAccount_CreateArgs>(
    BankAccount_CreateDocument
  )
