import {  useMutation } from "@apollo/client";
import {
  BankAccount_DeleteInput,
  BankAccount_DeleteResponse,
  BankAccount_DeleteDocument,
  Onchain_ClaimRewardsResponse,
  Onchain_ClaimDocument,
  MutationOnchain_ClaimArgs,
} from "../__generated__/graphql";

export const useBankAccount_delete = () => {
  const [mutate, { data, loading, error }] = useMutation<
    BankAccount_DeleteResponse,
    BankAccount_DeleteInput
  >(BankAccount_DeleteDocument);

  return { mutate, data, isLoading: loading, error };
};

export const useClaimRewards = () => {


  const [mutate, { data, loading, error }] = useMutation<
    Onchain_ClaimRewardsResponse,
    MutationOnchain_ClaimArgs
  >(Onchain_ClaimDocument);

  return { mutate, data, isLoading: loading, error };
};


