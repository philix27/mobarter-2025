import { useMutation, useQuery } from "@apollo/client";
import {
  Adverts_GetAllDocument,
  Adverts_CreateDocument,
  MutationAdverts_CreateArgs,
} from "../__generated__/graphql";
import { WrappedResponse } from "./types";
import { QueryResponse } from "./types";

export const useAdvert_Create = () =>
  useMutation<WrappedResponse<"adverts_create">, MutationAdverts_CreateArgs>(
    Adverts_CreateDocument
  );

export const useAdvert_GetAll = () =>
  useQuery<QueryResponse<"adverts_getAll">>(Adverts_GetAllDocument);
