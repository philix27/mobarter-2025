import { useQuery } from '@apollo/client'
import { BankAccount_GetAllDocument, Mutation, Query } from '../__generated__/graphql'

export type Input<T> = { input: T }
// type Response<T, K extends keyof T> = {K: T[K]}
// type Keys = "id" | "name" | "email";

export type Response<V, K extends keyof V> = {
  [key in K]: V[K]
}

export type MutationResponse<K extends keyof Mutation> = Response<Mutation, K>
export type QueryResponse<K extends keyof Query> = Response<Query, K>

export type WrappedResponse<K extends keyof Mutation> = Response<Mutation, K>
