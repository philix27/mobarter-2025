import { useMutation } from '@apollo/client'
import {
  MutationKyc_AddAddressInfoArgs,
  Kyc_AddAddressInfoDocument,
  MutationKyc_AddAddressProofArgs,
  Kyc_AddAddressProofDocument,
  MutationKyc_AddBvnArgs,
  Kyc_AddBvnDocument,
  Kyc_AddDobDocument,
  MutationKyc_AddDobArgs,
  Kyc_AddNamesDocument,
  MutationKyc_AddNamesArgs,
  Kyc_AddNinDocument,
  MutationKyc_AddNinArgs,
  MutationKyc_CreateTransactionPinArgs,
  Kyc_CreateTransactionPinDocument,
} from '../__generated__/graphql'
import { WrappedResponse, Input } from './types'

export const useKyc_addAddressInfo = () =>
  useMutation<WrappedResponse<'kyc_addAddressInfo'>, MutationKyc_AddAddressInfoArgs>(
    Kyc_AddAddressInfoDocument
  )

export const useKyc_addAddressProof = () =>
  useMutation<WrappedResponse<'kyc_addAddressProof'>, MutationKyc_AddAddressProofArgs>(
    Kyc_AddAddressProofDocument
  )

export const useKyc_addBvn = () =>
  useMutation<WrappedResponse<'kyc_addBvn'>, MutationKyc_AddBvnArgs>(Kyc_AddBvnDocument)

export const useKyc_addDob = () =>
  useMutation<WrappedResponse<'kyc_addDob'>, MutationKyc_AddDobArgs>(Kyc_AddDobDocument)

export const useKyc_addNames = () =>
  useMutation<WrappedResponse<'kyc_addNames'>, MutationKyc_AddNamesArgs>(Kyc_AddNamesDocument)

export const useKyc_addNin = () =>
  useMutation<WrappedResponse<'kyc_addNin'>, MutationKyc_AddNinArgs>(Kyc_AddNinDocument)

export const useKyc_createTransactionPin = () =>
  useMutation<WrappedResponse<'kyc_createTransactionPin'>, MutationKyc_CreateTransactionPinArgs>(
    Kyc_CreateTransactionPinDocument
  )
