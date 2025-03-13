/* eslint-disable */
import { GraphQLResolveInfo } from "graphql";
import { TypedDocumentNode as DocumentNode } from "@graphql-typed-document-node/core";
import gql from "graphql-tag";
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
  auth_createAccount: Auth_CreateAccountResponse;
  auth_login: Auth_LoginResponse;
  auth_logout: Scalars["String"]["output"];
  auth_resetPassword: Auth_ResetPasswordResponse;
  auth_sendEmailOtp: Auth_SendEmailOtpResponse;
  auth_verifyEmailOtp: Auth_VerifyOtpResponse;
  bankAccount_create: BankAccount_Response;
  bankAccount_delete: BankAccount_DeleteResponse;
  walletCrypto_create: WalletCrypto;
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
  bankAccount_getAll: Array<BankAccount_Response>;
  getMarket: PostDto;
  user_getOne: UserDto;
  walletCrypto_getAll: WalletCrypto;
  walletFiat_getAll: WalletFiat;
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

export type WalletCrypto = {
  __typename?: "WalletCrypto";
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
    __typename?: "WalletCrypto";
    address: string;
    wallet_id: string;
  };
};

export const Auth_LoginDocument = {
  kind: "Document",
  definitions: [
    {
      kind: "OperationDefinition",
      operation: "mutation",
      name: { kind: "Name", value: "Auth_login" },
      variableDefinitions: [
        {
          kind: "VariableDefinition",
          variable: {
            kind: "Variable",
            name: { kind: "Name", value: "input" },
          },
          type: {
            kind: "NonNullType",
            type: {
              kind: "NamedType",
              name: { kind: "Name", value: "Auth_LoginInput" },
            },
          },
        },
      ],
      selectionSet: {
        kind: "SelectionSet",
        selections: [
          {
            kind: "Field",
            name: { kind: "Name", value: "auth_login" },
            arguments: [
              {
                kind: "Argument",
                name: { kind: "Name", value: "input" },
                value: {
                  kind: "Variable",
                  name: { kind: "Name", value: "input" },
                },
              },
            ],
            selectionSet: {
              kind: "SelectionSet",
              selections: [
                { kind: "Field", name: { kind: "Name", value: "firstname" } },
                { kind: "Field", name: { kind: "Name", value: "country" } },
                { kind: "Field", name: { kind: "Name", value: "lastname" } },
                { kind: "Field", name: { kind: "Name", value: "middlename" } },
                { kind: "Field", name: { kind: "Name", value: "email" } },
                { kind: "Field", name: { kind: "Name", value: "token" } },
              ],
            },
          },
        ],
      },
    },
  ],
} as unknown as DocumentNode<Auth_LoginMutation, Auth_LoginMutationVariables>;
export const Auth_ResetPasswordDocument = {
  kind: "Document",
  definitions: [
    {
      kind: "OperationDefinition",
      operation: "mutation",
      name: { kind: "Name", value: "Auth_resetPassword" },
      variableDefinitions: [
        {
          kind: "VariableDefinition",
          variable: {
            kind: "Variable",
            name: { kind: "Name", value: "input" },
          },
          type: {
            kind: "NonNullType",
            type: {
              kind: "NamedType",
              name: { kind: "Name", value: "Auth_ResetPasswordInput" },
            },
          },
        },
      ],
      selectionSet: {
        kind: "SelectionSet",
        selections: [
          {
            kind: "Field",
            name: { kind: "Name", value: "auth_resetPassword" },
            arguments: [
              {
                kind: "Argument",
                name: { kind: "Name", value: "input" },
                value: {
                  kind: "Variable",
                  name: { kind: "Name", value: "input" },
                },
              },
            ],
            selectionSet: {
              kind: "SelectionSet",
              selections: [
                { kind: "Field", name: { kind: "Name", value: "message" } },
              ],
            },
          },
        ],
      },
    },
  ],
} as unknown as DocumentNode<
  Auth_ResetPasswordMutation,
  Auth_ResetPasswordMutationVariables
>;
export const Auth_SendEmailOtpDocument = {
  kind: "Document",
  definitions: [
    {
      kind: "OperationDefinition",
      operation: "mutation",
      name: { kind: "Name", value: "Auth_sendEmailOtp" },
      variableDefinitions: [
        {
          kind: "VariableDefinition",
          variable: {
            kind: "Variable",
            name: { kind: "Name", value: "input" },
          },
          type: {
            kind: "NonNullType",
            type: {
              kind: "NamedType",
              name: { kind: "Name", value: "Auth_sendEmailOtpInput" },
            },
          },
        },
      ],
      selectionSet: {
        kind: "SelectionSet",
        selections: [
          {
            kind: "Field",
            name: { kind: "Name", value: "auth_sendEmailOtp" },
            arguments: [
              {
                kind: "Argument",
                name: { kind: "Name", value: "input" },
                value: {
                  kind: "Variable",
                  name: { kind: "Name", value: "input" },
                },
              },
            ],
            selectionSet: {
              kind: "SelectionSet",
              selections: [
                { kind: "Field", name: { kind: "Name", value: "message" } },
                { kind: "Field", name: { kind: "Name", value: "token" } },
              ],
            },
          },
        ],
      },
    },
  ],
} as unknown as DocumentNode<
  Auth_SendEmailOtpMutation,
  Auth_SendEmailOtpMutationVariables
>;
export const Auth_VerifyEmailOtpDocument = {
  kind: "Document",
  definitions: [
    {
      kind: "OperationDefinition",
      operation: "mutation",
      name: { kind: "Name", value: "Auth_verifyEmailOtp" },
      variableDefinitions: [
        {
          kind: "VariableDefinition",
          variable: {
            kind: "Variable",
            name: { kind: "Name", value: "input" },
          },
          type: {
            kind: "NonNullType",
            type: {
              kind: "NamedType",
              name: { kind: "Name", value: "Auth_verifyEmailOtpInput" },
            },
          },
        },
      ],
      selectionSet: {
        kind: "SelectionSet",
        selections: [
          {
            kind: "Field",
            name: { kind: "Name", value: "auth_verifyEmailOtp" },
            arguments: [
              {
                kind: "Argument",
                name: { kind: "Name", value: "input" },
                value: {
                  kind: "Variable",
                  name: { kind: "Name", value: "input" },
                },
              },
            ],
            selectionSet: {
              kind: "SelectionSet",
              selections: [
                { kind: "Field", name: { kind: "Name", value: "message" } },
              ],
            },
          },
        ],
      },
    },
  ],
} as unknown as DocumentNode<
  Auth_VerifyEmailOtpMutation,
  Auth_VerifyEmailOtpMutationVariables
>;
export const Auth_CreateAccountDocument = {
  kind: "Document",
  definitions: [
    {
      kind: "OperationDefinition",
      operation: "mutation",
      name: { kind: "Name", value: "Auth_CreateAccount" },
      variableDefinitions: [
        {
          kind: "VariableDefinition",
          variable: {
            kind: "Variable",
            name: { kind: "Name", value: "input" },
          },
          type: {
            kind: "NonNullType",
            type: {
              kind: "NamedType",
              name: { kind: "Name", value: "Auth_CreateAccountInput" },
            },
          },
        },
      ],
      selectionSet: {
        kind: "SelectionSet",
        selections: [
          {
            kind: "Field",
            name: { kind: "Name", value: "auth_createAccount" },
            arguments: [
              {
                kind: "Argument",
                name: { kind: "Name", value: "input" },
                value: {
                  kind: "Variable",
                  name: { kind: "Name", value: "input" },
                },
              },
            ],
            selectionSet: {
              kind: "SelectionSet",
              selections: [
                { kind: "Field", name: { kind: "Name", value: "message" } },
              ],
            },
          },
        ],
      },
    },
  ],
} as unknown as DocumentNode<
  Auth_CreateAccountMutation,
  Auth_CreateAccountMutationVariables
>;
export const BankAccount_DeleteDocument = {
  kind: "Document",
  definitions: [
    {
      kind: "OperationDefinition",
      operation: "mutation",
      name: { kind: "Name", value: "BankAccount_delete" },
      variableDefinitions: [
        {
          kind: "VariableDefinition",
          variable: {
            kind: "Variable",
            name: { kind: "Name", value: "input" },
          },
          type: {
            kind: "NonNullType",
            type: {
              kind: "NamedType",
              name: { kind: "Name", value: "BankAccount_DeleteInput" },
            },
          },
        },
      ],
      selectionSet: {
        kind: "SelectionSet",
        selections: [
          {
            kind: "Field",
            name: { kind: "Name", value: "bankAccount_delete" },
            arguments: [
              {
                kind: "Argument",
                name: { kind: "Name", value: "input" },
                value: {
                  kind: "Variable",
                  name: { kind: "Name", value: "input" },
                },
              },
            ],
            selectionSet: {
              kind: "SelectionSet",
              selections: [
                { kind: "Field", name: { kind: "Name", value: "message" } },
              ],
            },
          },
        ],
      },
    },
  ],
} as unknown as DocumentNode<
  BankAccount_DeleteMutation,
  BankAccount_DeleteMutationVariables
>;
export const BankAccount_CreateDocument = {
  kind: "Document",
  definitions: [
    {
      kind: "OperationDefinition",
      operation: "mutation",
      name: { kind: "Name", value: "BankAccount_create" },
      variableDefinitions: [
        {
          kind: "VariableDefinition",
          variable: {
            kind: "Variable",
            name: { kind: "Name", value: "input" },
          },
          type: {
            kind: "NonNullType",
            type: {
              kind: "NamedType",
              name: { kind: "Name", value: "BankAccount_CreateInput" },
            },
          },
        },
      ],
      selectionSet: {
        kind: "SelectionSet",
        selections: [
          {
            kind: "Field",
            name: { kind: "Name", value: "bankAccount_create" },
            arguments: [
              {
                kind: "Argument",
                name: { kind: "Name", value: "input" },
                value: {
                  kind: "Variable",
                  name: { kind: "Name", value: "input" },
                },
              },
            ],
            selectionSet: {
              kind: "SelectionSet",
              selections: [
                { kind: "Field", name: { kind: "Name", value: "id" } },
                { kind: "Field", name: { kind: "Name", value: "bank_name" } },
                {
                  kind: "Field",
                  name: { kind: "Name", value: "account_name" },
                },
                { kind: "Field", name: { kind: "Name", value: "account_no" } },
              ],
            },
          },
        ],
      },
    },
  ],
} as unknown as DocumentNode<
  BankAccount_CreateMutation,
  BankAccount_CreateMutationVariables
>;
export const BankAccount_GetAllDocument = {
  kind: "Document",
  definitions: [
    {
      kind: "OperationDefinition",
      operation: "query",
      name: { kind: "Name", value: "BankAccount_getAll" },
      selectionSet: {
        kind: "SelectionSet",
        selections: [
          {
            kind: "Field",
            name: { kind: "Name", value: "bankAccount_getAll" },
            selectionSet: {
              kind: "SelectionSet",
              selections: [
                { kind: "Field", name: { kind: "Name", value: "id" } },
                {
                  kind: "Field",
                  name: { kind: "Name", value: "account_name" },
                },
                { kind: "Field", name: { kind: "Name", value: "account_no" } },
                { kind: "Field", name: { kind: "Name", value: "bank_name" } },
              ],
            },
          },
        ],
      },
    },
  ],
} as unknown as DocumentNode<
  BankAccount_GetAllQuery,
  BankAccount_GetAllQueryVariables
>;
export const WalletCrypto_CreateDocument = {
  kind: "Document",
  definitions: [
    {
      kind: "OperationDefinition",
      operation: "mutation",
      name: { kind: "Name", value: "WalletCrypto_create" },
      selectionSet: {
        kind: "SelectionSet",
        selections: [
          {
            kind: "Field",
            name: { kind: "Name", value: "walletCrypto_create" },
            selectionSet: {
              kind: "SelectionSet",
              selections: [
                { kind: "Field", name: { kind: "Name", value: "address" } },
                { kind: "Field", name: { kind: "Name", value: "wallet_id" } },
              ],
            },
          },
        ],
      },
    },
  ],
} as unknown as DocumentNode<
  WalletCrypto_CreateMutation,
  WalletCrypto_CreateMutationVariables
>;
/** All built-in and custom scalars, mapped to their actual values */
export type Scalars = {
  ID: { input: string; output: string };
  String: { input: string; output: string };
  Boolean: { input: boolean; output: boolean };
  Int: { input: number; output: number };
  Float: { input: number; output: number };
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
  auth_createAccount: Auth_CreateAccountResponse;
  auth_login: Auth_LoginResponse;
  auth_logout: Scalars["String"]["output"];
  auth_resetPassword: Auth_ResetPasswordResponse;
  auth_sendEmailOtp: Auth_SendEmailOtpResponse;
  auth_verifyEmailOtp: Auth_VerifyOtpResponse;
  bankAccount_create: BankAccount_Response;
  bankAccount_delete: BankAccount_DeleteResponse;
  walletCrypto_create: WalletCrypto;
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
  bankAccount_getAll: Array<BankAccount_Response>;
  getMarket: PostDto;
  user_getOne: UserDto;
  walletCrypto_getAll: WalletCrypto;
  walletFiat_getAll: WalletFiat;
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

export type WalletCrypto = {
  __typename?: "WalletCrypto";
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
    __typename?: "WalletCrypto";
    address: string;
    wallet_id: string;
  };
};

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
      wallet_id
    }
  }
`;

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
  Auth_CreateAccountInput: Auth_CreateAccountInput;
  String: ResolverTypeWrapper<Scalars["String"]["output"]>;
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
  ID: ResolverTypeWrapper<Scalars["ID"]["output"]>;
  PostGetOneInput: PostGetOneInput;
  Query: ResolverTypeWrapper<{}>;
  UserDto: ResolverTypeWrapper<UserDto>;
  UserGetInfo: UserGetInfo;
  WalletCrypto: ResolverTypeWrapper<WalletCrypto>;
  WalletFiat: ResolverTypeWrapper<WalletFiat>;
  Boolean: ResolverTypeWrapper<Scalars["Boolean"]["output"]>;
};

/** Mapping between all available schema types and the resolvers parents */
export type ResolversParentTypes = {
  Auth_CreateAccountInput: Auth_CreateAccountInput;
  String: Scalars["String"]["output"];
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
  ID: Scalars["ID"]["output"];
  PostGetOneInput: PostGetOneInput;
  Query: {};
  UserDto: UserDto;
  UserGetInfo: UserGetInfo;
  WalletCrypto: WalletCrypto;
  WalletFiat: WalletFiat;
  Boolean: Scalars["Boolean"]["output"];
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
    ResolversTypes["WalletCrypto"],
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
    ResolversTypes["WalletCrypto"],
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

export type WalletCryptoResolvers<
  ContextType = any,
  ParentType extends ResolversParentTypes["WalletCrypto"] = ResolversParentTypes["WalletCrypto"]
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
  WalletCrypto?: WalletCryptoResolvers<ContextType>;
  WalletFiat?: WalletFiatResolvers<ContextType>;
};
