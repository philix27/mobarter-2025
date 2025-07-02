import { useQuery } from "@apollo/client";
import { WalletCrypto_GetAllDocument } from "../__generated__/graphql";
import { QueryResponse } from "./types";

export const useGetWallets = () =>
  useQuery<QueryResponse<"walletCrypto_getAll">>(WalletCrypto_GetAllDocument);
