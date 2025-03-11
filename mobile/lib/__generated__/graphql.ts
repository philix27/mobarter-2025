/* eslint-disable */
import { gql } from '@apollo/client';
export type Maybe<T> = T | null;
export type InputMaybe<T> = Maybe<T>;
export type Exact<T extends { [key: string]: unknown }> = { [K in keyof T]: T[K] };
export type MakeOptional<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]?: Maybe<T[SubKey]> };
export type MakeMaybe<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]: Maybe<T[SubKey]> };
export type MakeEmpty<T extends { [key: string]: unknown }, K extends keyof T> = { [_ in K]?: never };
export type Incremental<T> = T | { [P in keyof T]?: P extends ' $fragmentName' | '__typename' ? T[P] : never };
/** All built-in and custom scalars, mapped to their actual values */
export type Scalars = {
  ID: { input: string; output: string; }
  String: { input: string; output: string; }
  Boolean: { input: boolean; output: boolean; }
  Int: { input: number; output: number; }
  Float: { input: number; output: number; }
};

export type Auth_CreateAccountInput = {
  country: Country;
  email: Scalars['String']['input'];
  firstname: Scalars['String']['input'];
  lastname: Scalars['String']['input'];
  middlename?: InputMaybe<Scalars['String']['input']>;
  password: Scalars['String']['input'];
};

export type Auth_CreateAccountResponse = {
  __typename?: 'Auth_CreateAccountResponse';
  message: Scalars['String']['output'];
};

export type Auth_LoginInput = {
  email: Scalars['String']['input'];
  password: Scalars['String']['input'];
};

export type Auth_LoginResponse = {
  __typename?: 'Auth_LoginResponse';
  country: Country;
  email: Scalars['String']['output'];
  firstname: Scalars['String']['output'];
  lastname: Scalars['String']['output'];
  middlename?: Maybe<Scalars['String']['output']>;
  token: Scalars['String']['output'];
};

export type Auth_LogoutInput = {
  email: Scalars['String']['input'];
};

export type Auth_ResetPasswordInput = {
  confirmPassword: Scalars['String']['input'];
  email: Scalars['String']['input'];
  password: Scalars['String']['input'];
};

export type Auth_ResetPasswordResponse = {
  __typename?: 'Auth_ResetPasswordResponse';
  message: Scalars['String']['output'];
};

export type Auth_SendEmailOtpInput = {
  email: Scalars['String']['input'];
  purpose: OtpPurpose;
};

export type Auth_SendEmailOtpResponse = {
  __typename?: 'Auth_sendEmailOtpResponse';
  message: Scalars['String']['output'];
  token: Scalars['String']['output'];
};

export type Auth_VerifyEmailOtpInput = {
  email: Scalars['String']['input'];
  otp: Scalars['String']['input'];
  token: Scalars['String']['input'];
};

export type Auth_VerifyOtpResponse = {
  __typename?: 'Auth_verifyOtpResponse';
  message: Scalars['String']['output'];
};

export type BankAccount_CreateInput = {
  accountName: Scalars['String']['input'];
  accountNo: Scalars['String']['input'];
  bankName: BankName;
};

export type BankAccount_DeleteInput = {
  accountId: Scalars['Float']['input'];
};

export type BankAccount_DeleteResponse = {
  __typename?: 'BankAccount_DeleteResponse';
  message: Scalars['String']['output'];
};

export type BankAccount_Response = {
  __typename?: 'BankAccount_Response';
  account_name: Scalars['String']['output'];
  account_no: Scalars['String']['output'];
  bank_name: BankName;
  id: Scalars['Float']['output'];
};

export enum BankName {
  NgFidelity = 'NG_FIDELITY',
  NgGtb = 'NG_GTB',
  NgMoniepoint = 'NG_MONIEPOINT',
  NgOpay = 'NG_OPAY',
  NgUba = 'NG_UBA',
  NgZenith = 'NG_ZENITH'
}

export enum ChainType {
  Cosmos = 'Cosmos',
  Ethereum = 'Ethereum',
  Solana = 'Solana'
}

export enum Country {
  Ghana = 'Ghana',
  Kenya = 'Kenya',
  Nigeria = 'Nigeria'
}

export enum CurrencyName {
  Btc = 'BTC',
  Cusd = 'CUSD',
  Eth = 'ETH',
  Ngn = 'NGN',
  Usdt = 'USDT',
  UsdTx = 'USDTx'
}

export type Mutation = {
  __typename?: 'Mutation';
  auth_createAccount: Auth_CreateAccountResponse;
  auth_login: Auth_LoginResponse;
  auth_logout: Scalars['String']['output'];
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
  SignUp = 'SignUp',
  Verification = 'Verification'
}

export type PostDto = {
  __typename?: 'PostDto';
  buyPrice: Scalars['Float']['output'];
  currency: Scalars['String']['output'];
  from: Scalars['String']['output'];
  id: Scalars['ID']['output'];
  sellPrice: Scalars['Float']['output'];
  time: Scalars['String']['output'];
};

export type PostGetOneInput = {
  currency: CurrencyName;
  postId: Scalars['Float']['input'];
};

export type Query = {
  __typename?: 'Query';
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
  __typename?: 'UserDto';
  country: Country;
  email: Scalars['String']['output'];
  firstname: Scalars['String']['output'];
  id: Scalars['ID']['output'];
  lastname: Scalars['String']['output'];
  middlename?: Maybe<Scalars['String']['output']>;
  password: Scalars['String']['output'];
};

export type UserGetInfo = {
  userId: Scalars['Float']['input'];
};

export type WalletCrypto = {
  __typename?: 'WalletCrypto';
  address: Scalars['String']['output'];
  chainType: ChainType;
  id: Scalars['Float']['output'];
  wallet_id: Scalars['String']['output'];
};

export type WalletFiat = {
  __typename?: 'WalletFiat';
  accountName: Scalars['String']['output'];
  accountNumber: Scalars['String']['output'];
  balance: Scalars['Float']['output'];
  bankName: Scalars['String']['output'];
};

/** All built-in and custom scalars, mapped to their actual values */
export type Scalars = {
  ID: { input: string; output: string; }
  String: { input: string; output: string; }
  Boolean: { input: boolean; output: boolean; }
  Int: { input: number; output: number; }
  Float: { input: number; output: number; }
};

export type Auth_CreateAccountInput = {
  country: Country;
  email: Scalars['String']['input'];
  firstname: Scalars['String']['input'];
  lastname: Scalars['String']['input'];
  middlename?: InputMaybe<Scalars['String']['input']>;
  password: Scalars['String']['input'];
};

export type Auth_CreateAccountResponse = {
  __typename?: 'Auth_CreateAccountResponse';
  message: Scalars['String']['output'];
};

export type Auth_LoginInput = {
  email: Scalars['String']['input'];
  password: Scalars['String']['input'];
};

export type Auth_LoginResponse = {
  __typename?: 'Auth_LoginResponse';
  country: Country;
  email: Scalars['String']['output'];
  firstname: Scalars['String']['output'];
  lastname: Scalars['String']['output'];
  middlename?: Maybe<Scalars['String']['output']>;
  token: Scalars['String']['output'];
};

export type Auth_LogoutInput = {
  email: Scalars['String']['input'];
};

export type Auth_ResetPasswordInput = {
  confirmPassword: Scalars['String']['input'];
  email: Scalars['String']['input'];
  password: Scalars['String']['input'];
};

export type Auth_ResetPasswordResponse = {
  __typename?: 'Auth_ResetPasswordResponse';
  message: Scalars['String']['output'];
};

export type Auth_SendEmailOtpInput = {
  email: Scalars['String']['input'];
  purpose: OtpPurpose;
};

export type Auth_SendEmailOtpResponse = {
  __typename?: 'Auth_sendEmailOtpResponse';
  message: Scalars['String']['output'];
  token: Scalars['String']['output'];
};

export type Auth_VerifyEmailOtpInput = {
  email: Scalars['String']['input'];
  otp: Scalars['String']['input'];
  token: Scalars['String']['input'];
};

export type Auth_VerifyOtpResponse = {
  __typename?: 'Auth_verifyOtpResponse';
  message: Scalars['String']['output'];
};

export type BankAccount_CreateInput = {
  accountName: Scalars['String']['input'];
  accountNo: Scalars['String']['input'];
  bankName: BankName;
};

export type BankAccount_DeleteInput = {
  accountId: Scalars['Float']['input'];
};

export type BankAccount_DeleteResponse = {
  __typename?: 'BankAccount_DeleteResponse';
  message: Scalars['String']['output'];
};

export type BankAccount_Response = {
  __typename?: 'BankAccount_Response';
  account_name: Scalars['String']['output'];
  account_no: Scalars['String']['output'];
  bank_name: BankName;
  id: Scalars['Float']['output'];
};

export enum BankName {
  NgFidelity = 'NG_FIDELITY',
  NgGtb = 'NG_GTB',
  NgMoniepoint = 'NG_MONIEPOINT',
  NgOpay = 'NG_OPAY',
  NgUba = 'NG_UBA',
  NgZenith = 'NG_ZENITH'
}

export enum ChainType {
  Cosmos = 'Cosmos',
  Ethereum = 'Ethereum',
  Solana = 'Solana'
}

export enum Country {
  Ghana = 'Ghana',
  Kenya = 'Kenya',
  Nigeria = 'Nigeria'
}

export enum CurrencyName {
  Btc = 'BTC',
  Cusd = 'CUSD',
  Eth = 'ETH',
  Ngn = 'NGN',
  Usdt = 'USDT',
  UsdTx = 'USDTx'
}

export type Mutation = {
  __typename?: 'Mutation';
  auth_createAccount: Auth_CreateAccountResponse;
  auth_login: Auth_LoginResponse;
  auth_logout: Scalars['String']['output'];
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
  SignUp = 'SignUp',
  Verification = 'Verification'
}

export type PostDto = {
  __typename?: 'PostDto';
  buyPrice: Scalars['Float']['output'];
  currency: Scalars['String']['output'];
  from: Scalars['String']['output'];
  id: Scalars['ID']['output'];
  sellPrice: Scalars['Float']['output'];
  time: Scalars['String']['output'];
};

export type PostGetOneInput = {
  currency: CurrencyName;
  postId: Scalars['Float']['input'];
};

export type Query = {
  __typename?: 'Query';
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
  __typename?: 'UserDto';
  country: Country;
  email: Scalars['String']['output'];
  firstname: Scalars['String']['output'];
  id: Scalars['ID']['output'];
  lastname: Scalars['String']['output'];
  middlename?: Maybe<Scalars['String']['output']>;
  password: Scalars['String']['output'];
};

export type UserGetInfo = {
  userId: Scalars['Float']['input'];
};

export type WalletCrypto = {
  __typename?: 'WalletCrypto';
  address: Scalars['String']['output'];
  chainType: ChainType;
  id: Scalars['Float']['output'];
  wallet_id: Scalars['String']['output'];
};

export type WalletFiat = {
  __typename?: 'WalletFiat';
  accountName: Scalars['String']['output'];
  accountNumber: Scalars['String']['output'];
  balance: Scalars['Float']['output'];
  bankName: Scalars['String']['output'];
};
