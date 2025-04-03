import { useMutation } from "@apollo/client";
import {
  BankAccount_DeleteInput,
  BankAccount_DeleteResponse,
  BankAccount_DeleteDocument,
} from "../__generated__/graphql";
import { WrappedResponse, Input } from "./types";

export const useBankAccount_delete = () => {
  const [mutate, { data, loading, error }] = useMutation<
    BankAccount_DeleteResponse,
    BankAccount_DeleteInput
  >(BankAccount_DeleteDocument);

  return { mutate, data, isLoading: loading, error };
};
