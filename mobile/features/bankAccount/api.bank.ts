import {
  Bank_VerifyAccountNoDocument,
  BankAccount_CreateDocument,
  BankAccount_GetAllDocument,
  BankListDocument,
  MutationBankAccount_CreateArgs,
  MutationResponse,
  QueryBank_VerifyAccountNoArgs,
  QueryResponse,
} from '@/graphql'
import { useMutation, useQuery } from '@apollo/client'

export const useBankAccountList = () =>
  useQuery<QueryResponse<'bankAccount_getAll'>>(BankAccount_GetAllDocument, {
    pollInterval: 60_000,
  })

export const useAddAcct = () => {
  return useMutation<MutationResponse<'bankAccount_create'>, MutationBankAccount_CreateArgs>(
    BankAccount_CreateDocument
  )
}

export const useBankList = () => useQuery<QueryResponse<'bankList'>>(BankListDocument)

export const useBankAccountName = (props: { accountNo: string; bankCode: string }) =>
  useQuery<QueryResponse<'bank_verifyAccountNo'>, QueryBank_VerifyAccountNoArgs>(
    Bank_VerifyAccountNoDocument,
    {
      variables: {
        input: props,
      },
    }
  )
