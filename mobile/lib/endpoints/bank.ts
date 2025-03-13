import { useMutation } from "@apollo/client";
import {
  BankAccount_DeleteInput,
  BankAccount_DeleteResponse,
  BankAccount_DeleteDocument,
} from "../__generated__/graphql";

export const useBankAccount_delete = () => {
  const [mutate, { data, loading, error }] = useMutation<
    BankAccount_DeleteResponse,
    BankAccount_DeleteInput
  >(BankAccount_DeleteDocument);

  return { mutate, data, isLoading: loading, error };
};
