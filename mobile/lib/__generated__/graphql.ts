/* eslint-disable */
import { GraphQLResolveInfo } from "graphql";
import { TypedDocumentNode as DocumentNode } from "@graphql-typed-document-node/core";
import { gql } from "@apollo/client";
import * as Apollo from "@apollo/client";
export type Maybe<T> = T | null;
export type InputMaybe<T> = Maybe<T>;
export type Exact<T extends { [key: string]: unknown }> = {
  [K in keyof T]: T[K];
};
export type MakeOptional<T, K extends keyof T> = Omit<T, K> & {
  [SubKey in K]?: Maybe<T[SubKey]>;
};
export type MakeMaybe<T, K extends keyof T> = Omit<T, K> & {
  [SubKey in K]: Maybe<T[SubKey]>;
};
export type MakeEmpty<
  T extends { [key: string]: unknown },
  K extends keyof T
> = { [_ in K]?: never };
export type Incremental<T> =
  | T
  | {
      [P in keyof T]?: P extends " $fragmentName" | "__typename" ? T[P] : never;
    };
export type RequireFields<T, K extends keyof T> = Omit<T, K> & {
  [P in K]-?: NonNullable<T[P]>;
};
const defaultOptions = {} as const;

/** All built-in and custom scalars, mapped to their actual values */
export type Scalars = {
  ID: { input: string; output: string };
  String: { input: string; output: string };
  Boolean: { input: boolean; output: boolean };
  Int: { input: number; output: number };
  Float: { input: number; output: number };
};

export type Advert_AdvertResponse = {
  __typename?: "Advert_AdvertResponse";
  currency?: Maybe<Scalars["String"]["output"]>;
  lowerLimit?: Maybe<Scalars["String"]["output"]>;
  rate?: Maybe<Scalars["String"]["output"]>;
  state?: Maybe<Scalars["String"]["output"]>;
  upperLimit?: Maybe<Scalars["String"]["output"]>;
};

export type Advert_CreateInput = {
  currency: Scalars["String"]["input"];
  lowerLimit: Scalars["String"]["input"];
  rate: Scalars["String"]["input"];
  state: Scalars["String"]["input"];
  upperLimit: Scalars["String"]["input"];
};

export type Advert_DeleteInput = {
  id: Scalars["ID"]["input"];
};

export type Advert_GetAllInput = {
  filter?: InputMaybe<Scalars["String"]["input"]>;
};

export type Advert_GetOneInput = {
  id: Scalars["ID"]["input"];
};

export type Advert_UpdateInput = {
  currency: Scalars["String"]["input"];
  id: Scalars["ID"]["input"];
  lowerLimit: Scalars["String"]["input"];
  rate: Scalars["String"]["input"];
  state: Scalars["String"]["input"];
  upperLimit: Scalars["String"]["input"];
};

export type Auth_CreateAccountInput = {
  country: Country;
  email: Scalars["String"]["input"];
  firstname: Scalars["String"]["input"];
  lastname: Scalars["String"]["input"];
  middlename?: InputMaybe<Scalars["String"]["input"]>;
  password: Scalars["String"]["input"];
};

export type Auth_CreateAccountResponse = {
  __typename?: "Auth_CreateAccountResponse";
  message: Scalars["String"]["output"];
};

export type Auth_LoginInput = {
  email: Scalars["String"]["input"];
  password: Scalars["String"]["input"];
};

export type Auth_LoginResponse = {
  __typename?: "Auth_LoginResponse";
  country: Country;
  email: Scalars["String"]["output"];
  firstname: Scalars["String"]["output"];
  lastname: Scalars["String"]["output"];
  middlename?: Maybe<Scalars["String"]["output"]>;
  token: Scalars["String"]["output"];
};

export type Auth_LogoutInput = {
  email: Scalars["String"]["input"];
};

export type Auth_ResetPasswordInput = {
  confirmPassword: Scalars["String"]["input"];
  email: Scalars["String"]["input"];
  password: Scalars["String"]["input"];
};

export type Auth_ResetPasswordResponse = {
  __typename?: "Auth_ResetPasswordResponse";
  message: Scalars["String"]["output"];
};

export type Auth_SendEmailOtpInput = {
  email: Scalars["String"]["input"];
  purpose: OtpPurpose;
};

export type Auth_SendEmailOtpResponse = {
  __typename?: "Auth_sendEmailOtpResponse";
  message: Scalars["String"]["output"];
  token: Scalars["String"]["output"];
};

export type Auth_VerifyEmailOtpInput = {
  email: Scalars["String"]["input"];
  otp: Scalars["String"]["input"];
  token: Scalars["String"]["input"];
};

export type Auth_VerifyOtpResponse = {
  __typename?: "Auth_verifyOtpResponse";
  message: Scalars["String"]["output"];
};

export type BankAccount_CreateInput = {
  accountName: Scalars["String"]["input"];
  accountNo: Scalars["String"]["input"];
  bankName: BankName;
};

export type BankAccount_DeleteInput = {
  accountId: Scalars["Float"]["input"];
};

export type BankAccount_DeleteResponse = {
  __typename?: "BankAccount_DeleteResponse";
  message: Scalars["String"]["output"];
};

export type BankAccount_Response = {
  __typename?: "BankAccount_Response";
  account_name: Scalars["String"]["output"];
  account_no: Scalars["String"]["output"];
  bank_name: BankName;
  id: Scalars["Float"]["output"];
};

export enum BankName {
  NgFidelity = "NG_FIDELITY",
  NgGtb = "NG_GTB",
  NgMoniepoint = "NG_MONIEPOINT",
  NgOpay = "NG_OPAY",
  NgUba = "NG_UBA",
  NgZenith = "NG_ZENITH",
}

export enum ChainType {
  Cosmos = "Cosmos",
  Ethereum = "Ethereum",
  Solana = "Solana",
}

export enum Country {
  Ghana = "Ghana",
  Kenya = "Kenya",
  Nigeria = "Nigeria",
}

export enum CurrencyName {
  Btc = "BTC",
  Cusd = "CUSD",
  Eth = "ETH",
  Ngn = "NGN",
  Usdt = "USDT",
  UsdTx = "USDTx",
}

export type Mutation = {
  __typename?: "Mutation";
  adverts_create: Advert_AdvertResponse;
  adverts_delete: Advert_AdvertResponse;
  adverts_update: Advert_AdvertResponse;
  auth_createAccount: Auth_CreateAccountResponse;
  auth_login: Auth_LoginResponse;
  auth_logout: Scalars["String"]["output"];
  auth_resetPassword: Auth_ResetPasswordResponse;
  auth_sendEmailOtp: Auth_SendEmailOtpResponse;
  auth_verifyEmailOtp: Auth_VerifyOtpResponse;
  bankAccount_create: BankAccount_Response;
  bankAccount_delete: BankAccount_DeleteResponse;
  walletCrypto_create: WalletCryptoResponse;
};

export type MutationAdverts_CreateArgs = {
  input: Advert_CreateInput;
};

export type MutationAdverts_DeleteArgs = {
  input: Advert_DeleteInput;
};

export type MutationAdverts_UpdateArgs = {
  input: Advert_UpdateInput;
};

export type MutationAuth_CreateAccountArgs = {
  input: Auth_CreateAccountInput;
};

export type MutationAuth_LoginArgs = {
  input: Auth_LoginInput;
};

export type MutationAuth_LogoutArgs = {
  input: Auth_LogoutInput;
};

export type MutationAuth_ResetPasswordArgs = {
  input: Auth_ResetPasswordInput;
};

export type MutationAuth_SendEmailOtpArgs = {
  input: Auth_SendEmailOtpInput;
};

export type MutationAuth_VerifyEmailOtpArgs = {
  input: Auth_VerifyEmailOtpInput;
};

export type MutationBankAccount_CreateArgs = {
  input: BankAccount_CreateInput;
};

export type MutationBankAccount_DeleteArgs = {
  input: BankAccount_DeleteInput;
};

export enum OtpPurpose {
  SignUp = "SignUp",
  Verification = "Verification",
}

export type PostDto = {
  __typename?: "PostDto";
  buyPrice: Scalars["Float"]["output"];
  currency: Scalars["String"]["output"];
  from: Scalars["String"]["output"];
  id: Scalars["ID"]["output"];
  sellPrice: Scalars["Float"]["output"];
  time: Scalars["String"]["output"];
};

export type PostGetOneInput = {
  currency: CurrencyName;
  postId: Scalars["Float"]["input"];
};

export type Query = {
  __typename?: "Query";
  adverts_getAll: Array<Advert_AdvertResponse>;
  adverts_getOne: Advert_AdvertResponse;
  bankAccount_getAll: Array<BankAccount_Response>;
  getMarket: PostDto;
  user_getOne: UserDto;
  walletCrypto_getAll: Array<WalletCryptoResponse>;
  walletFiat_getAll: WalletFiat;
};

export type QueryAdverts_GetAllArgs = {
  input: Advert_GetAllInput;
};

export type QueryAdverts_GetOneArgs = {
  input: Advert_GetOneInput;
};

export type QueryGetMarketArgs = {
  input: PostGetOneInput;
};

export type QueryUser_GetOneArgs = {
  input: UserGetInfo;
};

export type UserDto = {
  __typename?: "UserDto";
  country: Country;
  email: Scalars["String"]["output"];
  firstname: Scalars["String"]["output"];
  id: Scalars["ID"]["output"];
  lastname: Scalars["String"]["output"];
  middlename?: Maybe<Scalars["String"]["output"]>;
  password: Scalars["String"]["output"];
};

export type UserGetInfo = {
  userId: Scalars["Float"]["input"];
};

export type WalletCryptoResponse = {
  __typename?: "WalletCryptoResponse";
  address: Scalars["String"]["output"];
  chainType: ChainType;
  id: Scalars["Float"]["output"];
  wallet_id: Scalars["String"]["output"];
};

export type WalletFiat = {
  __typename?: "WalletFiat";
  accountName: Scalars["String"]["output"];
  accountNumber: Scalars["String"]["output"];
  balance: Scalars["Float"]["output"];
  bankName: Scalars["String"]["output"];
};

export type Adverts_UpdateMutationVariables = Exact<{
  input: Advert_UpdateInput;
}>;

export type Adverts_UpdateMutation = {
  __typename?: "Mutation";
  adverts_update: {
    __typename?: "Advert_AdvertResponse";
    rate?: string | null;
    state?: string | null;
    currency?: string | null;
    lowerLimit?: string | null;
  };
};

export type Adverts_CreateMutationVariables = Exact<{
  input: Advert_CreateInput;
}>;

export type Adverts_CreateMutation = {
  __typename?: "Mutation";
  adverts_create: {
    __typename?: "Advert_AdvertResponse";
    rate?: string | null;
    state?: string | null;
    currency?: string | null;
    lowerLimit?: string | null;
  };
};

export type Adverts_DeleteMutationVariables = Exact<{
  input: Advert_DeleteInput;
}>;

export type Adverts_DeleteMutation = {
  __typename?: "Mutation";
  adverts_delete: {
    __typename?: "Advert_AdvertResponse";
    rate?: string | null;
    state?: string | null;
    currency?: string | null;
    lowerLimit?: string | null;
  };
};

export type Adverts_GetAllQueryVariables = Exact<{
  input: Advert_GetAllInput;
}>;

export type Adverts_GetAllQuery = {
  __typename?: "Query";
  adverts_getAll: Array<{
    __typename?: "Advert_AdvertResponse";
    rate?: string | null;
    state?: string | null;
    currency?: string | null;
    lowerLimit?: string | null;
  }>;
};

export type Adverts_GetOneQueryVariables = Exact<{
  input: Advert_GetOneInput;
}>;

export type Adverts_GetOneQuery = {
  __typename?: "Query";
  adverts_getOne: {
    __typename?: "Advert_AdvertResponse";
    rate?: string | null;
    state?: string | null;
    currency?: string | null;
    lowerLimit?: string | null;
  };
};

export type Auth_LoginMutationVariables = Exact<{
  input: Auth_LoginInput;
}>;

export type Auth_LoginMutation = {
  __typename?: "Mutation";
  auth_login: {
    __typename?: "Auth_LoginResponse";
    firstname: string;
    country: Country;
    lastname: string;
    middlename?: string | null;
    email: string;
    token: string;
  };
};

export type Auth_ResetPasswordMutationVariables = Exact<{
  input: Auth_ResetPasswordInput;
}>;

export type Auth_ResetPasswordMutation = {
  __typename?: "Mutation";
  auth_resetPassword: {
    __typename?: "Auth_ResetPasswordResponse";
    message: string;
  };
};

export type Auth_SendEmailOtpMutationVariables = Exact<{
  input: Auth_SendEmailOtpInput;
}>;

export type Auth_SendEmailOtpMutation = {
  __typename?: "Mutation";
  auth_sendEmailOtp: {
    __typename?: "Auth_sendEmailOtpResponse";
    message: string;
    token: string;
  };
};

export type Auth_VerifyEmailOtpMutationVariables = Exact<{
  input: Auth_VerifyEmailOtpInput;
}>;

export type Auth_VerifyEmailOtpMutation = {
  __typename?: "Mutation";
  auth_verifyEmailOtp: {
    __typename?: "Auth_verifyOtpResponse";
    message: string;
  };
};

export type Auth_CreateAccountMutationVariables = Exact<{
  input: Auth_CreateAccountInput;
}>;

export type Auth_CreateAccountMutation = {
  __typename?: "Mutation";
  auth_createAccount: {
    __typename?: "Auth_CreateAccountResponse";
    message: string;
  };
};

export type BankAccount_DeleteMutationVariables = Exact<{
  input: BankAccount_DeleteInput;
}>;

export type BankAccount_DeleteMutation = {
  __typename?: "Mutation";
  bankAccount_delete: {
    __typename?: "BankAccount_DeleteResponse";
    message: string;
  };
};

export type BankAccount_CreateMutationVariables = Exact<{
  input: BankAccount_CreateInput;
}>;

export type BankAccount_CreateMutation = {
  __typename?: "Mutation";
  bankAccount_create: {
    __typename?: "BankAccount_Response";
    id: number;
    bank_name: BankName;
    account_name: string;
    account_no: string;
  };
};

export type BankAccount_GetAllQueryVariables = Exact<{ [key: string]: never }>;

export type BankAccount_GetAllQuery = {
  __typename?: "Query";
  bankAccount_getAll: Array<{
    __typename?: "BankAccount_Response";
    id: number;
    account_name: string;
    account_no: string;
    bank_name: BankName;
  }>;
};

export type WalletCrypto_CreateMutationVariables = Exact<{
  [key: string]: never;
}>;

export type WalletCrypto_CreateMutation = {
  __typename?: "Mutation";
  walletCrypto_create: {
    __typename?: "WalletCryptoResponse";
    address: string;
    chainType: ChainType;
    id: number;
    wallet_id: string;
  };
};

export type WalletCrypto_GetAllQueryVariables = Exact<{ [key: string]: never }>;

export type WalletCrypto_GetAllQuery = {
  __typename?: "Query";
  walletCrypto_getAll: Array<{
    __typename?: "WalletCryptoResponse";
    address: string;
    chainType: ChainType;
    id: number;
    wallet_id: string;
  }>;
};

export const Adverts_Update = gql`
  mutation Adverts_update($input: Advert_UpdateInput!) {
    adverts_update(input: $input) {
      rate
      state
      currency
      lowerLimit
      rate
    }
  }
`;
export const Adverts_Create = gql`
  mutation Adverts_create($input: Advert_CreateInput!) {
    adverts_create(input: $input) {
      rate
      state
      currency
      lowerLimit
      rate
    }
  }
`;
export const Adverts_Delete = gql`
  mutation Adverts_delete($input: Advert_DeleteInput!) {
    adverts_delete(input: $input) {
      rate
      state
      currency
      lowerLimit
      rate
    }
  }
`;
export const Adverts_GetAll = gql`
  query Adverts_getAll($input: Advert_GetAllInput!) {
    adverts_getAll(input: $input) {
      rate
      state
      currency
      lowerLimit
      rate
    }
  }
`;
export const Adverts_GetOne = gql`
  query Adverts_getOne($input: Advert_GetOneInput!) {
    adverts_getOne(input: $input) {
      rate
      state
      currency
      lowerLimit
      rate
    }
  }
`;
export const Auth_Login = gql`
  mutation Auth_login($input: Auth_LoginInput!) {
    auth_login(input: $input) {
      firstname
      country
      lastname
      middlename
      email
      token
    }
  }
`;
export const Auth_ResetPassword = gql`
  mutation Auth_resetPassword($input: Auth_ResetPasswordInput!) {
    auth_resetPassword(input: $input) {
      message
    }
  }
`;
export const Auth_SendEmailOtp = gql`
  mutation Auth_sendEmailOtp($input: Auth_sendEmailOtpInput!) {
    auth_sendEmailOtp(input: $input) {
      message
      token
    }
  }
`;
export const Auth_VerifyEmailOtp = gql`
  mutation Auth_verifyEmailOtp($input: Auth_verifyEmailOtpInput!) {
    auth_verifyEmailOtp(input: $input) {
      message
    }
  }
`;
export const Auth_CreateAccount = gql`
  mutation Auth_CreateAccount($input: Auth_CreateAccountInput!) {
    auth_createAccount(input: $input) {
      message
    }
  }
`;
export const BankAccount_Delete = gql`
  mutation BankAccount_delete($input: BankAccount_DeleteInput!) {
    bankAccount_delete(input: $input) {
      message
    }
  }
`;
export const BankAccount_Create = gql`
  mutation BankAccount_create($input: BankAccount_CreateInput!) {
    bankAccount_create(input: $input) {
      id
      bank_name
      account_name
      account_no
    }
  }
`;
export const BankAccount_GetAll = gql`
  query BankAccount_getAll {
    bankAccount_getAll {
      id
      account_name
      account_no
      bank_name
    }
  }
`;
export const WalletCrypto_Create = gql`
  mutation WalletCrypto_create {
    walletCrypto_create {
      address
      chainType
      id
      wallet_id
    }
  }
`;
export const WalletCrypto_GetAll = gql`
  query WalletCrypto_getAll {
    walletCrypto_getAll {
      address
      chainType
      id
      wallet_id
    }
  }
`;

export const Adverts_UpdateDocument = gql`
  mutation Adverts_update($input: Advert_UpdateInput!) {
    adverts_update(input: $input) {
      rate
      state
      currency
      lowerLimit
      rate
    }
  }
`;
export type Adverts_UpdateMutationFn = Apollo.MutationFunction<
  Adverts_UpdateMutation,
  Adverts_UpdateMutationVariables
>;

/**
 * __useAdverts_UpdateMutation__
 *
 * To run a mutation, you first call `useAdverts_UpdateMutation` within a React component and pass it any options that fit your needs.
 * When your component renders, `useAdverts_UpdateMutation` returns a tuple that includes:
 * - A mutate function that you can call at any time to execute the mutation
 * - An object with fields that represent the current status of the mutation's execution
 *
 * @param baseOptions options that will be passed into the mutation, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options-2;
 *
 * @example
 * const [advertsUpdateMutation, { data, loading, error }] = useAdverts_UpdateMutation({
 *   variables: {
 *      input: // value for 'input'
 *   },
 * });
 */
export function useAdverts_UpdateMutation(
  baseOptions?: Apollo.MutationHookOptions<
    Adverts_UpdateMutation,
    Adverts_UpdateMutationVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useMutation<
    Adverts_UpdateMutation,
    Adverts_UpdateMutationVariables
  >(Adverts_UpdateDocument, options);
}
export type Adverts_UpdateMutationHookResult = ReturnType<
  typeof useAdverts_UpdateMutation
>;
export type Adverts_UpdateMutationResult =
  Apollo.MutationResult<Adverts_UpdateMutation>;
export type Adverts_UpdateMutationOptions = Apollo.BaseMutationOptions<
  Adverts_UpdateMutation,
  Adverts_UpdateMutationVariables
>;
export const Adverts_CreateDocument = gql`
  mutation Adverts_create($input: Advert_CreateInput!) {
    adverts_create(input: $input) {
      rate
      state
      currency
      lowerLimit
      rate
    }
  }
`;
export type Adverts_CreateMutationFn = Apollo.MutationFunction<
  Adverts_CreateMutation,
  Adverts_CreateMutationVariables
>;

/**
 * __useAdverts_CreateMutation__
 *
 * To run a mutation, you first call `useAdverts_CreateMutation` within a React component and pass it any options that fit your needs.
 * When your component renders, `useAdverts_CreateMutation` returns a tuple that includes:
 * - A mutate function that you can call at any time to execute the mutation
 * - An object with fields that represent the current status of the mutation's execution
 *
 * @param baseOptions options that will be passed into the mutation, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options-2;
 *
 * @example
 * const [advertsCreateMutation, { data, loading, error }] = useAdverts_CreateMutation({
 *   variables: {
 *      input: // value for 'input'
 *   },
 * });
 */
export function useAdverts_CreateMutation(
  baseOptions?: Apollo.MutationHookOptions<
    Adverts_CreateMutation,
    Adverts_CreateMutationVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useMutation<
    Adverts_CreateMutation,
    Adverts_CreateMutationVariables
  >(Adverts_CreateDocument, options);
}
export type Adverts_CreateMutationHookResult = ReturnType<
  typeof useAdverts_CreateMutation
>;
export type Adverts_CreateMutationResult =
  Apollo.MutationResult<Adverts_CreateMutation>;
export type Adverts_CreateMutationOptions = Apollo.BaseMutationOptions<
  Adverts_CreateMutation,
  Adverts_CreateMutationVariables
>;
export const Adverts_DeleteDocument = gql`
  mutation Adverts_delete($input: Advert_DeleteInput!) {
    adverts_delete(input: $input) {
      rate
      state
      currency
      lowerLimit
      rate
    }
  }
`;
export type Adverts_DeleteMutationFn = Apollo.MutationFunction<
  Adverts_DeleteMutation,
  Adverts_DeleteMutationVariables
>;

/**
 * __useAdverts_DeleteMutation__
 *
 * To run a mutation, you first call `useAdverts_DeleteMutation` within a React component and pass it any options that fit your needs.
 * When your component renders, `useAdverts_DeleteMutation` returns a tuple that includes:
 * - A mutate function that you can call at any time to execute the mutation
 * - An object with fields that represent the current status of the mutation's execution
 *
 * @param baseOptions options that will be passed into the mutation, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options-2;
 *
 * @example
 * const [advertsDeleteMutation, { data, loading, error }] = useAdverts_DeleteMutation({
 *   variables: {
 *      input: // value for 'input'
 *   },
 * });
 */
export function useAdverts_DeleteMutation(
  baseOptions?: Apollo.MutationHookOptions<
    Adverts_DeleteMutation,
    Adverts_DeleteMutationVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useMutation<
    Adverts_DeleteMutation,
    Adverts_DeleteMutationVariables
  >(Adverts_DeleteDocument, options);
}
export type Adverts_DeleteMutationHookResult = ReturnType<
  typeof useAdverts_DeleteMutation
>;
export type Adverts_DeleteMutationResult =
  Apollo.MutationResult<Adverts_DeleteMutation>;
export type Adverts_DeleteMutationOptions = Apollo.BaseMutationOptions<
  Adverts_DeleteMutation,
  Adverts_DeleteMutationVariables
>;
export const Adverts_GetAllDocument = gql`
  query Adverts_getAll($input: Advert_GetAllInput!) {
    adverts_getAll(input: $input) {
      rate
      state
      currency
      lowerLimit
      rate
    }
  }
`;

/**
 * __useAdverts_GetAllQuery__
 *
 * To run a query within a React component, call `useAdverts_GetAllQuery` and pass it any options that fit your needs.
 * When your component renders, `useAdverts_GetAllQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useAdverts_GetAllQuery({
 *   variables: {
 *      input: // value for 'input'
 *   },
 * });
 */
export function useAdverts_GetAllQuery(
  baseOptions: Apollo.QueryHookOptions<
    Adverts_GetAllQuery,
    Adverts_GetAllQueryVariables
  > &
    (
      | { variables: Adverts_GetAllQueryVariables; skip?: boolean }
      | { skip: boolean }
    )
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useQuery<Adverts_GetAllQuery, Adverts_GetAllQueryVariables>(
    Adverts_GetAllDocument,
    options
  );
}
export function useAdverts_GetAllLazyQuery(
  baseOptions?: Apollo.LazyQueryHookOptions<
    Adverts_GetAllQuery,
    Adverts_GetAllQueryVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useLazyQuery<Adverts_GetAllQuery, Adverts_GetAllQueryVariables>(
    Adverts_GetAllDocument,
    options
  );
}
export function useAdverts_GetAllSuspenseQuery(
  baseOptions?:
    | Apollo.SkipToken
    | Apollo.SuspenseQueryHookOptions<
        Adverts_GetAllQuery,
        Adverts_GetAllQueryVariables
      >
) {
  const options =
    baseOptions === Apollo.skipToken
      ? baseOptions
      : { ...defaultOptions, ...baseOptions };
  return Apollo.useSuspenseQuery<
    Adverts_GetAllQuery,
    Adverts_GetAllQueryVariables
  >(Adverts_GetAllDocument, options);
}
export type Adverts_GetAllQueryHookResult = ReturnType<
  typeof useAdverts_GetAllQuery
>;
export type Adverts_GetAllLazyQueryHookResult = ReturnType<
  typeof useAdverts_GetAllLazyQuery
>;
export type Adverts_GetAllSuspenseQueryHookResult = ReturnType<
  typeof useAdverts_GetAllSuspenseQuery
>;
export type Adverts_GetAllQueryResult = Apollo.QueryResult<
  Adverts_GetAllQuery,
  Adverts_GetAllQueryVariables
>;
export const Adverts_GetOneDocument = gql`
  query Adverts_getOne($input: Advert_GetOneInput!) {
    adverts_getOne(input: $input) {
      rate
      state
      currency
      lowerLimit
      rate
    }
  }
`;

/**
 * __useAdverts_GetOneQuery__
 *
 * To run a query within a React component, call `useAdverts_GetOneQuery` and pass it any options that fit your needs.
 * When your component renders, `useAdverts_GetOneQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useAdverts_GetOneQuery({
 *   variables: {
 *      input: // value for 'input'
 *   },
 * });
 */
export function useAdverts_GetOneQuery(
  baseOptions: Apollo.QueryHookOptions<
    Adverts_GetOneQuery,
    Adverts_GetOneQueryVariables
  > &
    (
      | { variables: Adverts_GetOneQueryVariables; skip?: boolean }
      | { skip: boolean }
    )
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useQuery<Adverts_GetOneQuery, Adverts_GetOneQueryVariables>(
    Adverts_GetOneDocument,
    options
  );
}
export function useAdverts_GetOneLazyQuery(
  baseOptions?: Apollo.LazyQueryHookOptions<
    Adverts_GetOneQuery,
    Adverts_GetOneQueryVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useLazyQuery<Adverts_GetOneQuery, Adverts_GetOneQueryVariables>(
    Adverts_GetOneDocument,
    options
  );
}
export function useAdverts_GetOneSuspenseQuery(
  baseOptions?:
    | Apollo.SkipToken
    | Apollo.SuspenseQueryHookOptions<
        Adverts_GetOneQuery,
        Adverts_GetOneQueryVariables
      >
) {
  const options =
    baseOptions === Apollo.skipToken
      ? baseOptions
      : { ...defaultOptions, ...baseOptions };
  return Apollo.useSuspenseQuery<
    Adverts_GetOneQuery,
    Adverts_GetOneQueryVariables
  >(Adverts_GetOneDocument, options);
}
export type Adverts_GetOneQueryHookResult = ReturnType<
  typeof useAdverts_GetOneQuery
>;
export type Adverts_GetOneLazyQueryHookResult = ReturnType<
  typeof useAdverts_GetOneLazyQuery
>;
export type Adverts_GetOneSuspenseQueryHookResult = ReturnType<
  typeof useAdverts_GetOneSuspenseQuery
>;
export type Adverts_GetOneQueryResult = Apollo.QueryResult<
  Adverts_GetOneQuery,
  Adverts_GetOneQueryVariables
>;
export const Auth_LoginDocument = gql`
  mutation Auth_login($input: Auth_LoginInput!) {
    auth_login(input: $input) {
      firstname
      country
      lastname
      middlename
      email
      token
    }
  }
`;
export type Auth_LoginMutationFn = Apollo.MutationFunction<
  Auth_LoginMutation,
  Auth_LoginMutationVariables
>;

/**
 * __useAuth_LoginMutation__
 *
 * To run a mutation, you first call `useAuth_LoginMutation` within a React component and pass it any options that fit your needs.
 * When your component renders, `useAuth_LoginMutation` returns a tuple that includes:
 * - A mutate function that you can call at any time to execute the mutation
 * - An object with fields that represent the current status of the mutation's execution
 *
 * @param baseOptions options that will be passed into the mutation, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options-2;
 *
 * @example
 * const [authLoginMutation, { data, loading, error }] = useAuth_LoginMutation({
 *   variables: {
 *      input: // value for 'input'
 *   },
 * });
 */
export function useAuth_LoginMutation(
  baseOptions?: Apollo.MutationHookOptions<
    Auth_LoginMutation,
    Auth_LoginMutationVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useMutation<Auth_LoginMutation, Auth_LoginMutationVariables>(
    Auth_LoginDocument,
    options
  );
}
export type Auth_LoginMutationHookResult = ReturnType<
  typeof useAuth_LoginMutation
>;
export type Auth_LoginMutationResult =
  Apollo.MutationResult<Auth_LoginMutation>;
export type Auth_LoginMutationOptions = Apollo.BaseMutationOptions<
  Auth_LoginMutation,
  Auth_LoginMutationVariables
>;
export const Auth_ResetPasswordDocument = gql`
  mutation Auth_resetPassword($input: Auth_ResetPasswordInput!) {
    auth_resetPassword(input: $input) {
      message
    }
  }
`;
export type Auth_ResetPasswordMutationFn = Apollo.MutationFunction<
  Auth_ResetPasswordMutation,
  Auth_ResetPasswordMutationVariables
>;

/**
 * __useAuth_ResetPasswordMutation__
 *
 * To run a mutation, you first call `useAuth_ResetPasswordMutation` within a React component and pass it any options that fit your needs.
 * When your component renders, `useAuth_ResetPasswordMutation` returns a tuple that includes:
 * - A mutate function that you can call at any time to execute the mutation
 * - An object with fields that represent the current status of the mutation's execution
 *
 * @param baseOptions options that will be passed into the mutation, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options-2;
 *
 * @example
 * const [authResetPasswordMutation, { data, loading, error }] = useAuth_ResetPasswordMutation({
 *   variables: {
 *      input: // value for 'input'
 *   },
 * });
 */
export function useAuth_ResetPasswordMutation(
  baseOptions?: Apollo.MutationHookOptions<
    Auth_ResetPasswordMutation,
    Auth_ResetPasswordMutationVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useMutation<
    Auth_ResetPasswordMutation,
    Auth_ResetPasswordMutationVariables
  >(Auth_ResetPasswordDocument, options);
}
export type Auth_ResetPasswordMutationHookResult = ReturnType<
  typeof useAuth_ResetPasswordMutation
>;
export type Auth_ResetPasswordMutationResult =
  Apollo.MutationResult<Auth_ResetPasswordMutation>;
export type Auth_ResetPasswordMutationOptions = Apollo.BaseMutationOptions<
  Auth_ResetPasswordMutation,
  Auth_ResetPasswordMutationVariables
>;
export const Auth_SendEmailOtpDocument = gql`
  mutation Auth_sendEmailOtp($input: Auth_sendEmailOtpInput!) {
    auth_sendEmailOtp(input: $input) {
      message
      token
    }
  }
`;
export type Auth_SendEmailOtpMutationFn = Apollo.MutationFunction<
  Auth_SendEmailOtpMutation,
  Auth_SendEmailOtpMutationVariables
>;

/**
 * __useAuth_SendEmailOtpMutation__
 *
 * To run a mutation, you first call `useAuth_SendEmailOtpMutation` within a React component and pass it any options that fit your needs.
 * When your component renders, `useAuth_SendEmailOtpMutation` returns a tuple that includes:
 * - A mutate function that you can call at any time to execute the mutation
 * - An object with fields that represent the current status of the mutation's execution
 *
 * @param baseOptions options that will be passed into the mutation, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options-2;
 *
 * @example
 * const [authSendEmailOtpMutation, { data, loading, error }] = useAuth_SendEmailOtpMutation({
 *   variables: {
 *      input: // value for 'input'
 *   },
 * });
 */
export function useAuth_SendEmailOtpMutation(
  baseOptions?: Apollo.MutationHookOptions<
    Auth_SendEmailOtpMutation,
    Auth_SendEmailOtpMutationVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useMutation<
    Auth_SendEmailOtpMutation,
    Auth_SendEmailOtpMutationVariables
  >(Auth_SendEmailOtpDocument, options);
}
export type Auth_SendEmailOtpMutationHookResult = ReturnType<
  typeof useAuth_SendEmailOtpMutation
>;
export type Auth_SendEmailOtpMutationResult =
  Apollo.MutationResult<Auth_SendEmailOtpMutation>;
export type Auth_SendEmailOtpMutationOptions = Apollo.BaseMutationOptions<
  Auth_SendEmailOtpMutation,
  Auth_SendEmailOtpMutationVariables
>;
export const Auth_VerifyEmailOtpDocument = gql`
  mutation Auth_verifyEmailOtp($input: Auth_verifyEmailOtpInput!) {
    auth_verifyEmailOtp(input: $input) {
      message
    }
  }
`;
export type Auth_VerifyEmailOtpMutationFn = Apollo.MutationFunction<
  Auth_VerifyEmailOtpMutation,
  Auth_VerifyEmailOtpMutationVariables
>;

/**
 * __useAuth_VerifyEmailOtpMutation__
 *
 * To run a mutation, you first call `useAuth_VerifyEmailOtpMutation` within a React component and pass it any options that fit your needs.
 * When your component renders, `useAuth_VerifyEmailOtpMutation` returns a tuple that includes:
 * - A mutate function that you can call at any time to execute the mutation
 * - An object with fields that represent the current status of the mutation's execution
 *
 * @param baseOptions options that will be passed into the mutation, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options-2;
 *
 * @example
 * const [authVerifyEmailOtpMutation, { data, loading, error }] = useAuth_VerifyEmailOtpMutation({
 *   variables: {
 *      input: // value for 'input'
 *   },
 * });
 */
export function useAuth_VerifyEmailOtpMutation(
  baseOptions?: Apollo.MutationHookOptions<
    Auth_VerifyEmailOtpMutation,
    Auth_VerifyEmailOtpMutationVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useMutation<
    Auth_VerifyEmailOtpMutation,
    Auth_VerifyEmailOtpMutationVariables
  >(Auth_VerifyEmailOtpDocument, options);
}
export type Auth_VerifyEmailOtpMutationHookResult = ReturnType<
  typeof useAuth_VerifyEmailOtpMutation
>;
export type Auth_VerifyEmailOtpMutationResult =
  Apollo.MutationResult<Auth_VerifyEmailOtpMutation>;
export type Auth_VerifyEmailOtpMutationOptions = Apollo.BaseMutationOptions<
  Auth_VerifyEmailOtpMutation,
  Auth_VerifyEmailOtpMutationVariables
>;
export const Auth_CreateAccountDocument = gql`
  mutation Auth_CreateAccount($input: Auth_CreateAccountInput!) {
    auth_createAccount(input: $input) {
      message
    }
  }
`;
export type Auth_CreateAccountMutationFn = Apollo.MutationFunction<
  Auth_CreateAccountMutation,
  Auth_CreateAccountMutationVariables
>;

/**
 * __useAuth_CreateAccountMutation__
 *
 * To run a mutation, you first call `useAuth_CreateAccountMutation` within a React component and pass it any options that fit your needs.
 * When your component renders, `useAuth_CreateAccountMutation` returns a tuple that includes:
 * - A mutate function that you can call at any time to execute the mutation
 * - An object with fields that represent the current status of the mutation's execution
 *
 * @param baseOptions options that will be passed into the mutation, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options-2;
 *
 * @example
 * const [authCreateAccountMutation, { data, loading, error }] = useAuth_CreateAccountMutation({
 *   variables: {
 *      input: // value for 'input'
 *   },
 * });
 */
export function useAuth_CreateAccountMutation(
  baseOptions?: Apollo.MutationHookOptions<
    Auth_CreateAccountMutation,
    Auth_CreateAccountMutationVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useMutation<
    Auth_CreateAccountMutation,
    Auth_CreateAccountMutationVariables
  >(Auth_CreateAccountDocument, options);
}
export type Auth_CreateAccountMutationHookResult = ReturnType<
  typeof useAuth_CreateAccountMutation
>;
export type Auth_CreateAccountMutationResult =
  Apollo.MutationResult<Auth_CreateAccountMutation>;
export type Auth_CreateAccountMutationOptions = Apollo.BaseMutationOptions<
  Auth_CreateAccountMutation,
  Auth_CreateAccountMutationVariables
>;
export const BankAccount_DeleteDocument = gql`
  mutation BankAccount_delete($input: BankAccount_DeleteInput!) {
    bankAccount_delete(input: $input) {
      message
    }
  }
`;
export type BankAccount_DeleteMutationFn = Apollo.MutationFunction<
  BankAccount_DeleteMutation,
  BankAccount_DeleteMutationVariables
>;

/**
 * __useBankAccount_DeleteMutation__
 *
 * To run a mutation, you first call `useBankAccount_DeleteMutation` within a React component and pass it any options that fit your needs.
 * When your component renders, `useBankAccount_DeleteMutation` returns a tuple that includes:
 * - A mutate function that you can call at any time to execute the mutation
 * - An object with fields that represent the current status of the mutation's execution
 *
 * @param baseOptions options that will be passed into the mutation, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options-2;
 *
 * @example
 * const [bankAccountDeleteMutation, { data, loading, error }] = useBankAccount_DeleteMutation({
 *   variables: {
 *      input: // value for 'input'
 *   },
 * });
 */
export function useBankAccount_DeleteMutation(
  baseOptions?: Apollo.MutationHookOptions<
    BankAccount_DeleteMutation,
    BankAccount_DeleteMutationVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useMutation<
    BankAccount_DeleteMutation,
    BankAccount_DeleteMutationVariables
  >(BankAccount_DeleteDocument, options);
}
export type BankAccount_DeleteMutationHookResult = ReturnType<
  typeof useBankAccount_DeleteMutation
>;
export type BankAccount_DeleteMutationResult =
  Apollo.MutationResult<BankAccount_DeleteMutation>;
export type BankAccount_DeleteMutationOptions = Apollo.BaseMutationOptions<
  BankAccount_DeleteMutation,
  BankAccount_DeleteMutationVariables
>;
export const BankAccount_CreateDocument = gql`
  mutation BankAccount_create($input: BankAccount_CreateInput!) {
    bankAccount_create(input: $input) {
      id
      bank_name
      account_name
      account_no
    }
  }
`;
export type BankAccount_CreateMutationFn = Apollo.MutationFunction<
  BankAccount_CreateMutation,
  BankAccount_CreateMutationVariables
>;

/**
 * __useBankAccount_CreateMutation__
 *
 * To run a mutation, you first call `useBankAccount_CreateMutation` within a React component and pass it any options that fit your needs.
 * When your component renders, `useBankAccount_CreateMutation` returns a tuple that includes:
 * - A mutate function that you can call at any time to execute the mutation
 * - An object with fields that represent the current status of the mutation's execution
 *
 * @param baseOptions options that will be passed into the mutation, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options-2;
 *
 * @example
 * const [bankAccountCreateMutation, { data, loading, error }] = useBankAccount_CreateMutation({
 *   variables: {
 *      input: // value for 'input'
 *   },
 * });
 */
export function useBankAccount_CreateMutation(
  baseOptions?: Apollo.MutationHookOptions<
    BankAccount_CreateMutation,
    BankAccount_CreateMutationVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useMutation<
    BankAccount_CreateMutation,
    BankAccount_CreateMutationVariables
  >(BankAccount_CreateDocument, options);
}
export type BankAccount_CreateMutationHookResult = ReturnType<
  typeof useBankAccount_CreateMutation
>;
export type BankAccount_CreateMutationResult =
  Apollo.MutationResult<BankAccount_CreateMutation>;
export type BankAccount_CreateMutationOptions = Apollo.BaseMutationOptions<
  BankAccount_CreateMutation,
  BankAccount_CreateMutationVariables
>;
export const BankAccount_GetAllDocument = gql`
  query BankAccount_getAll {
    bankAccount_getAll {
      id
      account_name
      account_no
      bank_name
    }
  }
`;

/**
 * __useBankAccount_GetAllQuery__
 *
 * To run a query within a React component, call `useBankAccount_GetAllQuery` and pass it any options that fit your needs.
 * When your component renders, `useBankAccount_GetAllQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useBankAccount_GetAllQuery({
 *   variables: {
 *   },
 * });
 */
export function useBankAccount_GetAllQuery(
  baseOptions?: Apollo.QueryHookOptions<
    BankAccount_GetAllQuery,
    BankAccount_GetAllQueryVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useQuery<
    BankAccount_GetAllQuery,
    BankAccount_GetAllQueryVariables
  >(BankAccount_GetAllDocument, options);
}
export function useBankAccount_GetAllLazyQuery(
  baseOptions?: Apollo.LazyQueryHookOptions<
    BankAccount_GetAllQuery,
    BankAccount_GetAllQueryVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useLazyQuery<
    BankAccount_GetAllQuery,
    BankAccount_GetAllQueryVariables
  >(BankAccount_GetAllDocument, options);
}
export function useBankAccount_GetAllSuspenseQuery(
  baseOptions?:
    | Apollo.SkipToken
    | Apollo.SuspenseQueryHookOptions<
        BankAccount_GetAllQuery,
        BankAccount_GetAllQueryVariables
      >
) {
  const options =
    baseOptions === Apollo.skipToken
      ? baseOptions
      : { ...defaultOptions, ...baseOptions };
  return Apollo.useSuspenseQuery<
    BankAccount_GetAllQuery,
    BankAccount_GetAllQueryVariables
  >(BankAccount_GetAllDocument, options);
}
export type BankAccount_GetAllQueryHookResult = ReturnType<
  typeof useBankAccount_GetAllQuery
>;
export type BankAccount_GetAllLazyQueryHookResult = ReturnType<
  typeof useBankAccount_GetAllLazyQuery
>;
export type BankAccount_GetAllSuspenseQueryHookResult = ReturnType<
  typeof useBankAccount_GetAllSuspenseQuery
>;
export type BankAccount_GetAllQueryResult = Apollo.QueryResult<
  BankAccount_GetAllQuery,
  BankAccount_GetAllQueryVariables
>;
export const WalletCrypto_CreateDocument = gql`
  mutation WalletCrypto_create {
    walletCrypto_create {
      address
      chainType
      id
      wallet_id
    }
  }
`;
export type WalletCrypto_CreateMutationFn = Apollo.MutationFunction<
  WalletCrypto_CreateMutation,
  WalletCrypto_CreateMutationVariables
>;

/**
 * __useWalletCrypto_CreateMutation__
 *
 * To run a mutation, you first call `useWalletCrypto_CreateMutation` within a React component and pass it any options that fit your needs.
 * When your component renders, `useWalletCrypto_CreateMutation` returns a tuple that includes:
 * - A mutate function that you can call at any time to execute the mutation
 * - An object with fields that represent the current status of the mutation's execution
 *
 * @param baseOptions options that will be passed into the mutation, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options-2;
 *
 * @example
 * const [walletCryptoCreateMutation, { data, loading, error }] = useWalletCrypto_CreateMutation({
 *   variables: {
 *   },
 * });
 */
export function useWalletCrypto_CreateMutation(
  baseOptions?: Apollo.MutationHookOptions<
    WalletCrypto_CreateMutation,
    WalletCrypto_CreateMutationVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useMutation<
    WalletCrypto_CreateMutation,
    WalletCrypto_CreateMutationVariables
  >(WalletCrypto_CreateDocument, options);
}
export type WalletCrypto_CreateMutationHookResult = ReturnType<
  typeof useWalletCrypto_CreateMutation
>;
export type WalletCrypto_CreateMutationResult =
  Apollo.MutationResult<WalletCrypto_CreateMutation>;
export type WalletCrypto_CreateMutationOptions = Apollo.BaseMutationOptions<
  WalletCrypto_CreateMutation,
  WalletCrypto_CreateMutationVariables
>;
export const WalletCrypto_GetAllDocument = gql`
  query WalletCrypto_getAll {
    walletCrypto_getAll {
      address
      chainType
      id
      wallet_id
    }
  }
`;

/**
 * __useWalletCrypto_GetAllQuery__
 *
 * To run a query within a React component, call `useWalletCrypto_GetAllQuery` and pass it any options that fit your needs.
 * When your component renders, `useWalletCrypto_GetAllQuery` returns an object from Apollo Client that contains loading, error, and data properties
 * you can use to render your UI.
 *
 * @param baseOptions options that will be passed into the query, supported options are listed on: https://www.apollographql.com/docs/react/api/react-hooks/#options;
 *
 * @example
 * const { data, loading, error } = useWalletCrypto_GetAllQuery({
 *   variables: {
 *   },
 * });
 */
export function useWalletCrypto_GetAllQuery(
  baseOptions?: Apollo.QueryHookOptions<
    WalletCrypto_GetAllQuery,
    WalletCrypto_GetAllQueryVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useQuery<
    WalletCrypto_GetAllQuery,
    WalletCrypto_GetAllQueryVariables
  >(WalletCrypto_GetAllDocument, options);
}
export function useWalletCrypto_GetAllLazyQuery(
  baseOptions?: Apollo.LazyQueryHookOptions<
    WalletCrypto_GetAllQuery,
    WalletCrypto_GetAllQueryVariables
  >
) {
  const options = { ...defaultOptions, ...baseOptions };
  return Apollo.useLazyQuery<
    WalletCrypto_GetAllQuery,
    WalletCrypto_GetAllQueryVariables
  >(WalletCrypto_GetAllDocument, options);
}
export function useWalletCrypto_GetAllSuspenseQuery(
  baseOptions?:
    | Apollo.SkipToken
    | Apollo.SuspenseQueryHookOptions<
        WalletCrypto_GetAllQuery,
        WalletCrypto_GetAllQueryVariables
      >
) {
  const options =
    baseOptions === Apollo.skipToken
      ? baseOptions
      : { ...defaultOptions, ...baseOptions };
  return Apollo.useSuspenseQuery<
    WalletCrypto_GetAllQuery,
    WalletCrypto_GetAllQueryVariables
  >(WalletCrypto_GetAllDocument, options);
}
export type WalletCrypto_GetAllQueryHookResult = ReturnType<
  typeof useWalletCrypto_GetAllQuery
>;
export type WalletCrypto_GetAllLazyQueryHookResult = ReturnType<
  typeof useWalletCrypto_GetAllLazyQuery
>;
export type WalletCrypto_GetAllSuspenseQueryHookResult = ReturnType<
  typeof useWalletCrypto_GetAllSuspenseQuery
>;
export type WalletCrypto_GetAllQueryResult = Apollo.QueryResult<
  WalletCrypto_GetAllQuery,
  WalletCrypto_GetAllQueryVariables
>;

export type ResolverTypeWrapper<T> = Promise<T> | T;

export type ResolverWithResolve<TResult, TParent, TContext, TArgs> = {
  resolve: ResolverFn<TResult, TParent, TContext, TArgs>;
};
export type Resolver<TResult, TParent = {}, TContext = {}, TArgs = {}> =
  | ResolverFn<TResult, TParent, TContext, TArgs>
  | ResolverWithResolve<TResult, TParent, TContext, TArgs>;

export type ResolverFn<TResult, TParent, TContext, TArgs> = (
  parent: TParent,
  args: TArgs,
  context: TContext,
  info: GraphQLResolveInfo
) => Promise<TResult> | TResult;

export type SubscriptionSubscribeFn<TResult, TParent, TContext, TArgs> = (
  parent: TParent,
  args: TArgs,
  context: TContext,
  info: GraphQLResolveInfo
) => AsyncIterable<TResult> | Promise<AsyncIterable<TResult>>;

export type SubscriptionResolveFn<TResult, TParent, TContext, TArgs> = (
  parent: TParent,
  args: TArgs,
  context: TContext,
  info: GraphQLResolveInfo
) => TResult | Promise<TResult>;

export interface SubscriptionSubscriberObject<
  TResult,
  TKey extends string,
  TParent,
  TContext,
  TArgs
> {
  subscribe: SubscriptionSubscribeFn<
    { [key in TKey]: TResult },
    TParent,
    TContext,
    TArgs
  >;
  resolve?: SubscriptionResolveFn<
    TResult,
    { [key in TKey]: TResult },
    TContext,
    TArgs
  >;
}

export interface SubscriptionResolverObject<TResult, TParent, TContext, TArgs> {
  subscribe: SubscriptionSubscribeFn<any, TParent, TContext, TArgs>;
  resolve: SubscriptionResolveFn<TResult, any, TContext, TArgs>;
}

export type SubscriptionObject<
  TResult,
  TKey extends string,
  TParent,
  TContext,
  TArgs
> =
  | SubscriptionSubscriberObject<TResult, TKey, TParent, TContext, TArgs>
  | SubscriptionResolverObject<TResult, TParent, TContext, TArgs>;

export type SubscriptionResolver<
  TResult,
  TKey extends string,
  TParent = {},
  TContext = {},
  TArgs = {}
> =
  | ((
      ...args: any[]
    ) => SubscriptionObject<TResult, TKey, TParent, TContext, TArgs>)
  | SubscriptionObject<TResult, TKey, TParent, TContext, TArgs>;

export type TypeResolveFn<TTypes, TParent = {}, TContext = {}> = (
  parent: TParent,
  context: TContext,
  info: GraphQLResolveInfo
) => Maybe<TTypes> | Promise<Maybe<TTypes>>;

export type IsTypeOfResolverFn<T = {}, TContext = {}> = (
  obj: T,
  context: TContext,
  info: GraphQLResolveInfo
) => boolean | Promise<boolean>;

export type NextResolverFn<T> = () => Promise<T>;

export type DirectiveResolverFn<
  TResult = {},
  TParent = {},
  TContext = {},
  TArgs = {}
> = (
  next: NextResolverFn<TResult>,
  parent: TParent,
  args: TArgs,
  context: TContext,
  info: GraphQLResolveInfo
) => TResult | Promise<TResult>;

/** Mapping between all available schema types and the resolvers types */
export type ResolversTypes = {
  Advert_AdvertResponse: ResolverTypeWrapper<Advert_AdvertResponse>;
  String: ResolverTypeWrapper<Scalars["String"]["output"]>;
  Advert_CreateInput: Advert_CreateInput;
  Advert_DeleteInput: Advert_DeleteInput;
  ID: ResolverTypeWrapper<Scalars["ID"]["output"]>;
  Advert_GetAllInput: Advert_GetAllInput;
  Advert_GetOneInput: Advert_GetOneInput;
  Advert_UpdateInput: Advert_UpdateInput;
  Auth_CreateAccountInput: Auth_CreateAccountInput;
  Auth_CreateAccountResponse: ResolverTypeWrapper<Auth_CreateAccountResponse>;
  Auth_LoginInput: Auth_LoginInput;
  Auth_LoginResponse: ResolverTypeWrapper<Auth_LoginResponse>;
  Auth_LogoutInput: Auth_LogoutInput;
  Auth_ResetPasswordInput: Auth_ResetPasswordInput;
  Auth_ResetPasswordResponse: ResolverTypeWrapper<Auth_ResetPasswordResponse>;
  Auth_sendEmailOtpInput: Auth_SendEmailOtpInput;
  Auth_sendEmailOtpResponse: ResolverTypeWrapper<Auth_SendEmailOtpResponse>;
  Auth_verifyEmailOtpInput: Auth_VerifyEmailOtpInput;
  Auth_verifyOtpResponse: ResolverTypeWrapper<Auth_VerifyOtpResponse>;
  BankAccount_CreateInput: BankAccount_CreateInput;
  BankAccount_DeleteInput: BankAccount_DeleteInput;
  Float: ResolverTypeWrapper<Scalars["Float"]["output"]>;
  BankAccount_DeleteResponse: ResolverTypeWrapper<BankAccount_DeleteResponse>;
  BankAccount_Response: ResolverTypeWrapper<BankAccount_Response>;
  BankName: BankName;
  ChainType: ChainType;
  Country: Country;
  CurrencyName: CurrencyName;
  Mutation: ResolverTypeWrapper<{}>;
  OtpPurpose: OtpPurpose;
  PostDto: ResolverTypeWrapper<PostDto>;
  PostGetOneInput: PostGetOneInput;
  Query: ResolverTypeWrapper<{}>;
  UserDto: ResolverTypeWrapper<UserDto>;
  UserGetInfo: UserGetInfo;
  WalletCryptoResponse: ResolverTypeWrapper<WalletCryptoResponse>;
  WalletFiat: ResolverTypeWrapper<WalletFiat>;
  Boolean: ResolverTypeWrapper<Scalars["Boolean"]["output"]>;
};

/** Mapping between all available schema types and the resolvers parents */
export type ResolversParentTypes = {
  Advert_AdvertResponse: Advert_AdvertResponse;
  String: Scalars["String"]["output"];
  Advert_CreateInput: Advert_CreateInput;
  Advert_DeleteInput: Advert_DeleteInput;
  ID: Scalars["ID"]["output"];
  Advert_GetAllInput: Advert_GetAllInput;
  Advert_GetOneInput: Advert_GetOneInput;
  Advert_UpdateInput: Advert_UpdateInput;
  Auth_CreateAccountInput: Auth_CreateAccountInput;
  Auth_CreateAccountResponse: Auth_CreateAccountResponse;
  Auth_LoginInput: Auth_LoginInput;
  Auth_LoginResponse: Auth_LoginResponse;
  Auth_LogoutInput: Auth_LogoutInput;
  Auth_ResetPasswordInput: Auth_ResetPasswordInput;
  Auth_ResetPasswordResponse: Auth_ResetPasswordResponse;
  Auth_sendEmailOtpInput: Auth_SendEmailOtpInput;
  Auth_sendEmailOtpResponse: Auth_SendEmailOtpResponse;
  Auth_verifyEmailOtpInput: Auth_VerifyEmailOtpInput;
  Auth_verifyOtpResponse: Auth_VerifyOtpResponse;
  BankAccount_CreateInput: BankAccount_CreateInput;
  BankAccount_DeleteInput: BankAccount_DeleteInput;
  Float: Scalars["Float"]["output"];
  BankAccount_DeleteResponse: BankAccount_DeleteResponse;
  BankAccount_Response: BankAccount_Response;
  Mutation: {};
  PostDto: PostDto;
  PostGetOneInput: PostGetOneInput;
  Query: {};
  UserDto: UserDto;
  UserGetInfo: UserGetInfo;
  WalletCryptoResponse: WalletCryptoResponse;
  WalletFiat: WalletFiat;
  Boolean: Scalars["Boolean"]["output"];
};

export type Advert_AdvertResponseResolvers<
  ContextType = any,
  ParentType extends ResolversParentTypes["Advert_AdvertResponse"] = ResolversParentTypes["Advert_AdvertResponse"]
> = {
  currency?: Resolver<Maybe<ResolversTypes["String"]>, ParentType, ContextType>;
  lowerLimit?: Resolver<
    Maybe<ResolversTypes["String"]>,
    ParentType,
    ContextType
  >;
  rate?: Resolver<Maybe<ResolversTypes["String"]>, ParentType, ContextType>;
  state?: Resolver<Maybe<ResolversTypes["String"]>, ParentType, ContextType>;
  upperLimit?: Resolver<
    Maybe<ResolversTypes["String"]>,
    ParentType,
    ContextType
  >;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Auth_CreateAccountResponseResolvers<
  ContextType = any,
  ParentType extends ResolversParentTypes["Auth_CreateAccountResponse"] = ResolversParentTypes["Auth_CreateAccountResponse"]
> = {
  message?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Auth_LoginResponseResolvers<
  ContextType = any,
  ParentType extends ResolversParentTypes["Auth_LoginResponse"] = ResolversParentTypes["Auth_LoginResponse"]
> = {
  country?: Resolver<ResolversTypes["Country"], ParentType, ContextType>;
  email?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  firstname?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  lastname?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  middlename?: Resolver<
    Maybe<ResolversTypes["String"]>,
    ParentType,
    ContextType
  >;
  token?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Auth_ResetPasswordResponseResolvers<
  ContextType = any,
  ParentType extends ResolversParentTypes["Auth_ResetPasswordResponse"] = ResolversParentTypes["Auth_ResetPasswordResponse"]
> = {
  message?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Auth_SendEmailOtpResponseResolvers<
  ContextType = any,
  ParentType extends ResolversParentTypes["Auth_sendEmailOtpResponse"] = ResolversParentTypes["Auth_sendEmailOtpResponse"]
> = {
  message?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  token?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Auth_VerifyOtpResponseResolvers<
  ContextType = any,
  ParentType extends ResolversParentTypes["Auth_verifyOtpResponse"] = ResolversParentTypes["Auth_verifyOtpResponse"]
> = {
  message?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type BankAccount_DeleteResponseResolvers<
  ContextType = any,
  ParentType extends ResolversParentTypes["BankAccount_DeleteResponse"] = ResolversParentTypes["BankAccount_DeleteResponse"]
> = {
  message?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type BankAccount_ResponseResolvers<
  ContextType = any,
  ParentType extends ResolversParentTypes["BankAccount_Response"] = ResolversParentTypes["BankAccount_Response"]
> = {
  account_name?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  account_no?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  bank_name?: Resolver<ResolversTypes["BankName"], ParentType, ContextType>;
  id?: Resolver<ResolversTypes["Float"], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type MutationResolvers<
  ContextType = any,
  ParentType extends ResolversParentTypes["Mutation"] = ResolversParentTypes["Mutation"]
> = {
  adverts_create?: Resolver<
    ResolversTypes["Advert_AdvertResponse"],
    ParentType,
    ContextType,
    RequireFields<MutationAdverts_CreateArgs, "input">
  >;
  adverts_delete?: Resolver<
    ResolversTypes["Advert_AdvertResponse"],
    ParentType,
    ContextType,
    RequireFields<MutationAdverts_DeleteArgs, "input">
  >;
  adverts_update?: Resolver<
    ResolversTypes["Advert_AdvertResponse"],
    ParentType,
    ContextType,
    RequireFields<MutationAdverts_UpdateArgs, "input">
  >;
  auth_createAccount?: Resolver<
    ResolversTypes["Auth_CreateAccountResponse"],
    ParentType,
    ContextType,
    RequireFields<MutationAuth_CreateAccountArgs, "input">
  >;
  auth_login?: Resolver<
    ResolversTypes["Auth_LoginResponse"],
    ParentType,
    ContextType,
    RequireFields<MutationAuth_LoginArgs, "input">
  >;
  auth_logout?: Resolver<
    ResolversTypes["String"],
    ParentType,
    ContextType,
    RequireFields<MutationAuth_LogoutArgs, "input">
  >;
  auth_resetPassword?: Resolver<
    ResolversTypes["Auth_ResetPasswordResponse"],
    ParentType,
    ContextType,
    RequireFields<MutationAuth_ResetPasswordArgs, "input">
  >;
  auth_sendEmailOtp?: Resolver<
    ResolversTypes["Auth_sendEmailOtpResponse"],
    ParentType,
    ContextType,
    RequireFields<MutationAuth_SendEmailOtpArgs, "input">
  >;
  auth_verifyEmailOtp?: Resolver<
    ResolversTypes["Auth_verifyOtpResponse"],
    ParentType,
    ContextType,
    RequireFields<MutationAuth_VerifyEmailOtpArgs, "input">
  >;
  bankAccount_create?: Resolver<
    ResolversTypes["BankAccount_Response"],
    ParentType,
    ContextType,
    RequireFields<MutationBankAccount_CreateArgs, "input">
  >;
  bankAccount_delete?: Resolver<
    ResolversTypes["BankAccount_DeleteResponse"],
    ParentType,
    ContextType,
    RequireFields<MutationBankAccount_DeleteArgs, "input">
  >;
  walletCrypto_create?: Resolver<
    ResolversTypes["WalletCryptoResponse"],
    ParentType,
    ContextType
  >;
};

export type PostDtoResolvers<
  ContextType = any,
  ParentType extends ResolversParentTypes["PostDto"] = ResolversParentTypes["PostDto"]
> = {
  buyPrice?: Resolver<ResolversTypes["Float"], ParentType, ContextType>;
  currency?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  from?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  id?: Resolver<ResolversTypes["ID"], ParentType, ContextType>;
  sellPrice?: Resolver<ResolversTypes["Float"], ParentType, ContextType>;
  time?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type QueryResolvers<
  ContextType = any,
  ParentType extends ResolversParentTypes["Query"] = ResolversParentTypes["Query"]
> = {
  adverts_getAll?: Resolver<
    Array<ResolversTypes["Advert_AdvertResponse"]>,
    ParentType,
    ContextType,
    RequireFields<QueryAdverts_GetAllArgs, "input">
  >;
  adverts_getOne?: Resolver<
    ResolversTypes["Advert_AdvertResponse"],
    ParentType,
    ContextType,
    RequireFields<QueryAdverts_GetOneArgs, "input">
  >;
  bankAccount_getAll?: Resolver<
    Array<ResolversTypes["BankAccount_Response"]>,
    ParentType,
    ContextType
  >;
  getMarket?: Resolver<
    ResolversTypes["PostDto"],
    ParentType,
    ContextType,
    RequireFields<QueryGetMarketArgs, "input">
  >;
  user_getOne?: Resolver<
    ResolversTypes["UserDto"],
    ParentType,
    ContextType,
    RequireFields<QueryUser_GetOneArgs, "input">
  >;
  walletCrypto_getAll?: Resolver<
    Array<ResolversTypes["WalletCryptoResponse"]>,
    ParentType,
    ContextType
  >;
  walletFiat_getAll?: Resolver<
    ResolversTypes["WalletFiat"],
    ParentType,
    ContextType
  >;
};

export type UserDtoResolvers<
  ContextType = any,
  ParentType extends ResolversParentTypes["UserDto"] = ResolversParentTypes["UserDto"]
> = {
  country?: Resolver<ResolversTypes["Country"], ParentType, ContextType>;
  email?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  firstname?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  id?: Resolver<ResolversTypes["ID"], ParentType, ContextType>;
  lastname?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  middlename?: Resolver<
    Maybe<ResolversTypes["String"]>,
    ParentType,
    ContextType
  >;
  password?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type WalletCryptoResponseResolvers<
  ContextType = any,
  ParentType extends ResolversParentTypes["WalletCryptoResponse"] = ResolversParentTypes["WalletCryptoResponse"]
> = {
  address?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  chainType?: Resolver<ResolversTypes["ChainType"], ParentType, ContextType>;
  id?: Resolver<ResolversTypes["Float"], ParentType, ContextType>;
  wallet_id?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type WalletFiatResolvers<
  ContextType = any,
  ParentType extends ResolversParentTypes["WalletFiat"] = ResolversParentTypes["WalletFiat"]
> = {
  accountName?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  accountNumber?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  balance?: Resolver<ResolversTypes["Float"], ParentType, ContextType>;
  bankName?: Resolver<ResolversTypes["String"], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Resolvers<ContextType = any> = {
  Advert_AdvertResponse?: Advert_AdvertResponseResolvers<ContextType>;
  Auth_CreateAccountResponse?: Auth_CreateAccountResponseResolvers<ContextType>;
  Auth_LoginResponse?: Auth_LoginResponseResolvers<ContextType>;
  Auth_ResetPasswordResponse?: Auth_ResetPasswordResponseResolvers<ContextType>;
  Auth_sendEmailOtpResponse?: Auth_SendEmailOtpResponseResolvers<ContextType>;
  Auth_verifyOtpResponse?: Auth_VerifyOtpResponseResolvers<ContextType>;
  BankAccount_DeleteResponse?: BankAccount_DeleteResponseResolvers<ContextType>;
  BankAccount_Response?: BankAccount_ResponseResolvers<ContextType>;
  Mutation?: MutationResolvers<ContextType>;
  PostDto?: PostDtoResolvers<ContextType>;
  Query?: QueryResolvers<ContextType>;
  UserDto?: UserDtoResolvers<ContextType>;
  WalletCryptoResponse?: WalletCryptoResponseResolvers<ContextType>;
  WalletFiat?: WalletFiatResolvers<ContextType>;
};
