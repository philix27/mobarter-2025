/* eslint-disable */
import { GraphQLResolveInfo } from 'graphql';
import gql from 'graphql-tag';
import { gql } from '@apollo/client';
export type Maybe<T> = T | null;
export type InputMaybe<T> = Maybe<T>;
export type Exact<T extends { [key: string]: unknown }> = { [K in keyof T]: T[K] };
export type MakeOptional<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]?: Maybe<T[SubKey]> };
export type MakeMaybe<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]: Maybe<T[SubKey]> };
export type MakeEmpty<T extends { [key: string]: unknown }, K extends keyof T> = { [_ in K]?: never };
export type Incremental<T> = T | { [P in keyof T]?: P extends ' $fragmentName' | '__typename' ? T[P] : never };
export type RequireFields<T, K extends keyof T> = Omit<T, K> & { [P in K]-?: NonNullable<T[P]> };
/** All built-in and custom scalars, mapped to their actual values */
export type Scalars = {
  ID: { input: string; output: string; }
  String: { input: string; output: string; }
  Boolean: { input: boolean; output: boolean; }
  Int: { input: number; output: number; }
  Float: { input: number; output: number; }
};

export enum AdvertStatus {
  Close = 'CLOSE',
  Open = 'OPEN'
}

export type Advert_AdvertResponse = {
  __typename?: 'Advert_AdvertResponse';
  advertStatus?: Maybe<AdvertStatus>;
  currencyCrypto?: Maybe<CurrencyCrypto>;
  currencyFiat?: Maybe<CurrencyFiat>;
  duration?: Maybe<Scalars['String']['output']>;
  id: Scalars['ID']['output'];
  instructions?: Maybe<Scalars['String']['output']>;
  limitLower?: Maybe<Scalars['Float']['output']>;
  limitUpper?: Maybe<Scalars['Float']['output']>;
  rate?: Maybe<Scalars['String']['output']>;
  tradeType?: Maybe<TradeType>;
};

export type Advert_CreateInput = {
  advertStatus: AdvertStatus;
  currencyCrypto: CurrencyCrypto;
  currencyFiat: CurrencyFiat;
  duration: Scalars['String']['input'];
  instructions: Scalars['String']['input'];
  limitLower: Scalars['Float']['input'];
  limitUpper: Scalars['Float']['input'];
  rate: Scalars['String']['input'];
  tradeType: TradeType;
};

export type Advert_DeleteInput = {
  id: Scalars['ID']['input'];
};

export type Advert_GetAllInput = {
  filter?: InputMaybe<Scalars['String']['input']>;
};

export type Advert_GetOneInput = {
  id: Scalars['ID']['input'];
};

export type Advert_UpdateInput = {
  advertStatus: AdvertStatus;
  currencyCrypto: CurrencyCrypto;
  currencyFiat: CurrencyFiat;
  duration: Scalars['String']['input'];
  id: Scalars['ID']['input'];
  instructions: Scalars['String']['input'];
  limitLower: Scalars['Float']['input'];
  limitUpper: Scalars['Float']['input'];
  rate: Scalars['String']['input'];
  tradeType: TradeType;
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

export type Auth_LoginMinipayInput = {
  walletAddress: Scalars['String']['input'];
};

export type Auth_LoginMinipayResponse = {
  __typename?: 'Auth_LoginMinipayResponse';
  email?: Maybe<Scalars['String']['output']>;
  firstname?: Maybe<Scalars['String']['output']>;
  lastname?: Maybe<Scalars['String']['output']>;
  middlename?: Maybe<Scalars['String']['output']>;
  token?: Maybe<Scalars['String']['output']>;
  walletAddress: Scalars['String']['output'];
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

export type Auth_MinipayCreateAccountInput = {
  email: Scalars['String']['input'];
  walletAddress: Scalars['String']['input'];
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
  NgAccess = 'NG_ACCESS',
  NgEcobank = 'NG_ECOBANK',
  NgFcmb = 'NG_FCMB',
  NgFidelity = 'NG_FIDELITY',
  NgFirst = 'NG_FIRST',
  NgGtb = 'NG_GTB',
  NgJaiz = 'NG_JAIZ',
  NgKeystone = 'NG_KEYSTONE',
  NgKuda = 'NG_KUDA',
  NgLotus = 'NG_LOTUS',
  NgMoniepoint = 'NG_MONIEPOINT',
  NgOpay = 'NG_OPAY',
  NgPalmpay = 'NG_PALMPAY',
  NgStanbic = 'NG_STANBIC',
  NgSterling = 'NG_STERLING',
  NgUba = 'NG_UBA',
  NgUnity = 'NG_UNITY',
  NgWema = 'NG_WEMA',
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

export enum CurrencyCrypto {
  BaseUsdt = 'BASE_USDT',
  Btc = 'BTC',
  Cusd = 'CUSD',
  Eth = 'ETH',
  EthUsdt = 'ETH_USDT'
}

export enum CurrencyFiat {
  Ghs = 'GHS',
  Kes = 'KES',
  Ngn = 'NGN'
}

export type Kyc_AddBvnInput = {
  bvn: Scalars['String']['input'];
};

export type Kyc_AddBvnResponse = {
  __typename?: 'Kyc_AddBvnResponse';
  message: Scalars['String']['output'];
};

export type Kyc_AddNinInput = {
  nin: Scalars['String']['input'];
};

export type Kyc_AddNinResponse = {
  __typename?: 'Kyc_AddNinResponse';
  message?: Maybe<Scalars['String']['output']>;
};

export type Kyc_SendEmailOtpInput = {
  email?: InputMaybe<Scalars['String']['input']>;
  purpose?: InputMaybe<OtpPurpose>;
};

export type Kyc_SendEmailResponse = {
  __typename?: 'Kyc_SendEmailResponse';
  message?: Maybe<Scalars['String']['output']>;
  token?: Maybe<Scalars['String']['output']>;
};

export type Kyc_VerifyEmailOtpInput = {
  email?: InputMaybe<Scalars['String']['input']>;
  otp?: InputMaybe<Scalars['String']['input']>;
  token?: InputMaybe<Scalars['String']['input']>;
};

export type Kyc_VerifyEmailResponse = {
  __typename?: 'Kyc_VerifyEmailResponse';
  message?: Maybe<Scalars['String']['output']>;
};

export type Mutation = {
  __typename?: 'Mutation';
  adverts_create: Advert_AdvertResponse;
  adverts_delete: Advert_AdvertResponse;
  adverts_update: Advert_AdvertResponse;
  auth_createAccount: Auth_CreateAccountResponse;
  auth_login: Auth_LoginResponse;
  auth_logout: Scalars['String']['output'];
  auth_minipayCreateAccount: Auth_LoginMinipayResponse;
  auth_minipayLogin: Auth_LoginMinipayResponse;
  auth_resetPassword: Auth_ResetPasswordResponse;
  auth_sendEmailOtp: Auth_SendEmailOtpResponse;
  auth_verifyEmailOtp: Auth_VerifyOtpResponse;
  bankAccount_create: BankAccount_Response;
  bankAccount_delete: BankAccount_DeleteResponse;
  kyc_addBvn: Kyc_AddBvnResponse;
  kyc_addNin: Kyc_AddNinResponse;
  kyc_sendEmailOtp: Kyc_SendEmailResponse;
  kyc_verifyEmailOtp: Kyc_VerifyEmailResponse;
  walletCrypto_create: Array<WalletCryptoResponse>;
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


export type MutationAuth_MinipayCreateAccountArgs = {
  input: Auth_MinipayCreateAccountInput;
};


export type MutationAuth_MinipayLoginArgs = {
  input: Auth_LoginMinipayInput;
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


export type MutationKyc_AddBvnArgs = {
  input: Kyc_AddBvnInput;
};


export type MutationKyc_AddNinArgs = {
  input: Kyc_AddNinInput;
};


export type MutationKyc_SendEmailOtpArgs = {
  input: Kyc_SendEmailOtpInput;
};


export type MutationKyc_VerifyEmailOtpArgs = {
  input: Kyc_VerifyEmailOtpInput;
};

export enum OtpPurpose {
  SignUp = 'SignUp',
  Verification = 'Verification'
}

export type Query = {
  __typename?: 'Query';
  adverts_getAll: Array<Advert_AdvertResponse>;
  adverts_getMerchantAdverts: Array<Advert_AdvertResponse>;
  adverts_getOne: Advert_AdvertResponse;
  bankAccount_getAll: Array<BankAccount_Response>;
  user_getOne: UserDto;
  walletCrypto_getAll: Array<WalletCryptoResponse>;
  walletFiat_getAll: WalletFiat;
};


export type QueryAdverts_GetAllArgs = {
  input: Advert_GetAllInput;
};


export type QueryAdverts_GetMerchantAdvertsArgs = {
  input: Advert_GetAllInput;
};


export type QueryAdverts_GetOneArgs = {
  input: Advert_GetOneInput;
};


export type QueryUser_GetOneArgs = {
  input: UserGetInfo;
};

export enum TradeType {
  Buy = 'BUY',
  Sell = 'SELL'
}

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

export type WalletCryptoResponse = {
  __typename?: 'WalletCryptoResponse';
  address: Scalars['String']['output'];
  chainType: ChainType;
  id: Scalars['Float']['output'];
  minipay?: Maybe<Scalars['Boolean']['output']>;
  wallet_id?: Maybe<Scalars['String']['output']>;
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

export enum AdvertStatus {
  Close = 'CLOSE',
  Open = 'OPEN'
}

export type Advert_AdvertResponse = {
  __typename?: 'Advert_AdvertResponse';
  advertStatus?: Maybe<AdvertStatus>;
  currencyCrypto?: Maybe<CurrencyCrypto>;
  currencyFiat?: Maybe<CurrencyFiat>;
  duration?: Maybe<Scalars['String']['output']>;
  id: Scalars['ID']['output'];
  instructions?: Maybe<Scalars['String']['output']>;
  limitLower?: Maybe<Scalars['Float']['output']>;
  limitUpper?: Maybe<Scalars['Float']['output']>;
  rate?: Maybe<Scalars['String']['output']>;
  tradeType?: Maybe<TradeType>;
};

export type Advert_CreateInput = {
  advertStatus: AdvertStatus;
  currencyCrypto: CurrencyCrypto;
  currencyFiat: CurrencyFiat;
  duration: Scalars['String']['input'];
  instructions: Scalars['String']['input'];
  limitLower: Scalars['Float']['input'];
  limitUpper: Scalars['Float']['input'];
  rate: Scalars['String']['input'];
  tradeType: TradeType;
};

export type Advert_DeleteInput = {
  id: Scalars['ID']['input'];
};

export type Advert_GetAllInput = {
  filter?: InputMaybe<Scalars['String']['input']>;
};

export type Advert_GetOneInput = {
  id: Scalars['ID']['input'];
};

export type Advert_UpdateInput = {
  advertStatus: AdvertStatus;
  currencyCrypto: CurrencyCrypto;
  currencyFiat: CurrencyFiat;
  duration: Scalars['String']['input'];
  id: Scalars['ID']['input'];
  instructions: Scalars['String']['input'];
  limitLower: Scalars['Float']['input'];
  limitUpper: Scalars['Float']['input'];
  rate: Scalars['String']['input'];
  tradeType: TradeType;
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

export type Auth_LoginMinipayInput = {
  walletAddress: Scalars['String']['input'];
};

export type Auth_LoginMinipayResponse = {
  __typename?: 'Auth_LoginMinipayResponse';
  email?: Maybe<Scalars['String']['output']>;
  firstname?: Maybe<Scalars['String']['output']>;
  lastname?: Maybe<Scalars['String']['output']>;
  middlename?: Maybe<Scalars['String']['output']>;
  token?: Maybe<Scalars['String']['output']>;
  walletAddress: Scalars['String']['output'];
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

export type Auth_MinipayCreateAccountInput = {
  email: Scalars['String']['input'];
  walletAddress: Scalars['String']['input'];
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
  NgAccess = 'NG_ACCESS',
  NgEcobank = 'NG_ECOBANK',
  NgFcmb = 'NG_FCMB',
  NgFidelity = 'NG_FIDELITY',
  NgFirst = 'NG_FIRST',
  NgGtb = 'NG_GTB',
  NgJaiz = 'NG_JAIZ',
  NgKeystone = 'NG_KEYSTONE',
  NgKuda = 'NG_KUDA',
  NgLotus = 'NG_LOTUS',
  NgMoniepoint = 'NG_MONIEPOINT',
  NgOpay = 'NG_OPAY',
  NgPalmpay = 'NG_PALMPAY',
  NgStanbic = 'NG_STANBIC',
  NgSterling = 'NG_STERLING',
  NgUba = 'NG_UBA',
  NgUnity = 'NG_UNITY',
  NgWema = 'NG_WEMA',
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

export enum CurrencyCrypto {
  BaseUsdt = 'BASE_USDT',
  Btc = 'BTC',
  Cusd = 'CUSD',
  Eth = 'ETH',
  EthUsdt = 'ETH_USDT'
}

export enum CurrencyFiat {
  Ghs = 'GHS',
  Kes = 'KES',
  Ngn = 'NGN'
}

export type Kyc_AddBvnInput = {
  bvn: Scalars['String']['input'];
};

export type Kyc_AddBvnResponse = {
  __typename?: 'Kyc_AddBvnResponse';
  message: Scalars['String']['output'];
};

export type Kyc_AddNinInput = {
  nin: Scalars['String']['input'];
};

export type Kyc_AddNinResponse = {
  __typename?: 'Kyc_AddNinResponse';
  message?: Maybe<Scalars['String']['output']>;
};

export type Kyc_SendEmailOtpInput = {
  email?: InputMaybe<Scalars['String']['input']>;
  purpose?: InputMaybe<OtpPurpose>;
};

export type Kyc_SendEmailResponse = {
  __typename?: 'Kyc_SendEmailResponse';
  message?: Maybe<Scalars['String']['output']>;
  token?: Maybe<Scalars['String']['output']>;
};

export type Kyc_VerifyEmailOtpInput = {
  email?: InputMaybe<Scalars['String']['input']>;
  otp?: InputMaybe<Scalars['String']['input']>;
  token?: InputMaybe<Scalars['String']['input']>;
};

export type Kyc_VerifyEmailResponse = {
  __typename?: 'Kyc_VerifyEmailResponse';
  message?: Maybe<Scalars['String']['output']>;
};

export type Mutation = {
  __typename?: 'Mutation';
  adverts_create: Advert_AdvertResponse;
  adverts_delete: Advert_AdvertResponse;
  adverts_update: Advert_AdvertResponse;
  auth_createAccount: Auth_CreateAccountResponse;
  auth_login: Auth_LoginResponse;
  auth_logout: Scalars['String']['output'];
  auth_minipayCreateAccount: Auth_LoginMinipayResponse;
  auth_minipayLogin: Auth_LoginMinipayResponse;
  auth_resetPassword: Auth_ResetPasswordResponse;
  auth_sendEmailOtp: Auth_SendEmailOtpResponse;
  auth_verifyEmailOtp: Auth_VerifyOtpResponse;
  bankAccount_create: BankAccount_Response;
  bankAccount_delete: BankAccount_DeleteResponse;
  kyc_addBvn: Kyc_AddBvnResponse;
  kyc_addNin: Kyc_AddNinResponse;
  kyc_sendEmailOtp: Kyc_SendEmailResponse;
  kyc_verifyEmailOtp: Kyc_VerifyEmailResponse;
  walletCrypto_create: Array<WalletCryptoResponse>;
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


export type MutationAuth_MinipayCreateAccountArgs = {
  input: Auth_MinipayCreateAccountInput;
};


export type MutationAuth_MinipayLoginArgs = {
  input: Auth_LoginMinipayInput;
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


export type MutationKyc_AddBvnArgs = {
  input: Kyc_AddBvnInput;
};


export type MutationKyc_AddNinArgs = {
  input: Kyc_AddNinInput;
};


export type MutationKyc_SendEmailOtpArgs = {
  input: Kyc_SendEmailOtpInput;
};


export type MutationKyc_VerifyEmailOtpArgs = {
  input: Kyc_VerifyEmailOtpInput;
};

export enum OtpPurpose {
  SignUp = 'SignUp',
  Verification = 'Verification'
}

export type Query = {
  __typename?: 'Query';
  adverts_getAll: Array<Advert_AdvertResponse>;
  adverts_getMerchantAdverts: Array<Advert_AdvertResponse>;
  adverts_getOne: Advert_AdvertResponse;
  bankAccount_getAll: Array<BankAccount_Response>;
  user_getOne: UserDto;
  walletCrypto_getAll: Array<WalletCryptoResponse>;
  walletFiat_getAll: WalletFiat;
};


export type QueryAdverts_GetAllArgs = {
  input: Advert_GetAllInput;
};


export type QueryAdverts_GetMerchantAdvertsArgs = {
  input: Advert_GetAllInput;
};


export type QueryAdverts_GetOneArgs = {
  input: Advert_GetOneInput;
};


export type QueryUser_GetOneArgs = {
  input: UserGetInfo;
};

export enum TradeType {
  Buy = 'BUY',
  Sell = 'SELL'
}

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

export type WalletCryptoResponse = {
  __typename?: 'WalletCryptoResponse';
  address: Scalars['String']['output'];
  chainType: ChainType;
  id: Scalars['Float']['output'];
  minipay?: Maybe<Scalars['Boolean']['output']>;
  wallet_id?: Maybe<Scalars['String']['output']>;
};

export type WalletFiat = {
  __typename?: 'WalletFiat';
  accountName: Scalars['String']['output'];
  accountNumber: Scalars['String']['output'];
  balance: Scalars['Float']['output'];
  bankName: Scalars['String']['output'];
};



export type ResolverTypeWrapper<T> = Promise<T> | T;


export type ResolverWithResolve<TResult, TParent, TContext, TArgs> = {
  resolve: ResolverFn<TResult, TParent, TContext, TArgs>;
};
export type Resolver<TResult, TParent = {}, TContext = {}, TArgs = {}> = ResolverFn<TResult, TParent, TContext, TArgs> | ResolverWithResolve<TResult, TParent, TContext, TArgs>;

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

export interface SubscriptionSubscriberObject<TResult, TKey extends string, TParent, TContext, TArgs> {
  subscribe: SubscriptionSubscribeFn<{ [key in TKey]: TResult }, TParent, TContext, TArgs>;
  resolve?: SubscriptionResolveFn<TResult, { [key in TKey]: TResult }, TContext, TArgs>;
}

export interface SubscriptionResolverObject<TResult, TParent, TContext, TArgs> {
  subscribe: SubscriptionSubscribeFn<any, TParent, TContext, TArgs>;
  resolve: SubscriptionResolveFn<TResult, any, TContext, TArgs>;
}

export type SubscriptionObject<TResult, TKey extends string, TParent, TContext, TArgs> =
  | SubscriptionSubscriberObject<TResult, TKey, TParent, TContext, TArgs>
  | SubscriptionResolverObject<TResult, TParent, TContext, TArgs>;

export type SubscriptionResolver<TResult, TKey extends string, TParent = {}, TContext = {}, TArgs = {}> =
  | ((...args: any[]) => SubscriptionObject<TResult, TKey, TParent, TContext, TArgs>)
  | SubscriptionObject<TResult, TKey, TParent, TContext, TArgs>;

export type TypeResolveFn<TTypes, TParent = {}, TContext = {}> = (
  parent: TParent,
  context: TContext,
  info: GraphQLResolveInfo
) => Maybe<TTypes> | Promise<Maybe<TTypes>>;

export type IsTypeOfResolverFn<T = {}, TContext = {}> = (obj: T, context: TContext, info: GraphQLResolveInfo) => boolean | Promise<boolean>;

export type NextResolverFn<T> = () => Promise<T>;

export type DirectiveResolverFn<TResult = {}, TParent = {}, TContext = {}, TArgs = {}> = (
  next: NextResolverFn<TResult>,
  parent: TParent,
  args: TArgs,
  context: TContext,
  info: GraphQLResolveInfo
) => TResult | Promise<TResult>;



/** Mapping between all available schema types and the resolvers types */
export type ResolversTypes = {
  AdvertStatus: AdvertStatus;
  Advert_AdvertResponse: ResolverTypeWrapper<Advert_AdvertResponse>;
  String: ResolverTypeWrapper<Scalars['String']['output']>;
  ID: ResolverTypeWrapper<Scalars['ID']['output']>;
  Float: ResolverTypeWrapper<Scalars['Float']['output']>;
  Advert_CreateInput: Advert_CreateInput;
  Advert_DeleteInput: Advert_DeleteInput;
  Advert_GetAllInput: Advert_GetAllInput;
  Advert_GetOneInput: Advert_GetOneInput;
  Advert_UpdateInput: Advert_UpdateInput;
  Auth_CreateAccountInput: Auth_CreateAccountInput;
  Auth_CreateAccountResponse: ResolverTypeWrapper<Auth_CreateAccountResponse>;
  Auth_LoginInput: Auth_LoginInput;
  Auth_LoginMinipayInput: Auth_LoginMinipayInput;
  Auth_LoginMinipayResponse: ResolverTypeWrapper<Auth_LoginMinipayResponse>;
  Auth_LoginResponse: ResolverTypeWrapper<Auth_LoginResponse>;
  Auth_LogoutInput: Auth_LogoutInput;
  Auth_MinipayCreateAccountInput: Auth_MinipayCreateAccountInput;
  Auth_ResetPasswordInput: Auth_ResetPasswordInput;
  Auth_ResetPasswordResponse: ResolverTypeWrapper<Auth_ResetPasswordResponse>;
  Auth_sendEmailOtpInput: Auth_SendEmailOtpInput;
  Auth_sendEmailOtpResponse: ResolverTypeWrapper<Auth_SendEmailOtpResponse>;
  Auth_verifyEmailOtpInput: Auth_VerifyEmailOtpInput;
  Auth_verifyOtpResponse: ResolverTypeWrapper<Auth_VerifyOtpResponse>;
  BankAccount_CreateInput: BankAccount_CreateInput;
  BankAccount_DeleteInput: BankAccount_DeleteInput;
  BankAccount_DeleteResponse: ResolverTypeWrapper<BankAccount_DeleteResponse>;
  BankAccount_Response: ResolverTypeWrapper<BankAccount_Response>;
  BankName: BankName;
  ChainType: ChainType;
  Country: Country;
  CurrencyCrypto: CurrencyCrypto;
  CurrencyFiat: CurrencyFiat;
  Kyc_AddBvnInput: Kyc_AddBvnInput;
  Kyc_AddBvnResponse: ResolverTypeWrapper<Kyc_AddBvnResponse>;
  Kyc_AddNinInput: Kyc_AddNinInput;
  Kyc_AddNinResponse: ResolverTypeWrapper<Kyc_AddNinResponse>;
  Kyc_SendEmailOtpInput: Kyc_SendEmailOtpInput;
  Kyc_SendEmailResponse: ResolverTypeWrapper<Kyc_SendEmailResponse>;
  Kyc_VerifyEmailOtpInput: Kyc_VerifyEmailOtpInput;
  Kyc_VerifyEmailResponse: ResolverTypeWrapper<Kyc_VerifyEmailResponse>;
  Mutation: ResolverTypeWrapper<{}>;
  OtpPurpose: OtpPurpose;
  Query: ResolverTypeWrapper<{}>;
  TradeType: TradeType;
  UserDto: ResolverTypeWrapper<UserDto>;
  UserGetInfo: UserGetInfo;
  WalletCryptoResponse: ResolverTypeWrapper<WalletCryptoResponse>;
  Boolean: ResolverTypeWrapper<Scalars['Boolean']['output']>;
  WalletFiat: ResolverTypeWrapper<WalletFiat>;
};

/** Mapping between all available schema types and the resolvers parents */
export type ResolversParentTypes = {
  Advert_AdvertResponse: Advert_AdvertResponse;
  String: Scalars['String']['output'];
  ID: Scalars['ID']['output'];
  Float: Scalars['Float']['output'];
  Advert_CreateInput: Advert_CreateInput;
  Advert_DeleteInput: Advert_DeleteInput;
  Advert_GetAllInput: Advert_GetAllInput;
  Advert_GetOneInput: Advert_GetOneInput;
  Advert_UpdateInput: Advert_UpdateInput;
  Auth_CreateAccountInput: Auth_CreateAccountInput;
  Auth_CreateAccountResponse: Auth_CreateAccountResponse;
  Auth_LoginInput: Auth_LoginInput;
  Auth_LoginMinipayInput: Auth_LoginMinipayInput;
  Auth_LoginMinipayResponse: Auth_LoginMinipayResponse;
  Auth_LoginResponse: Auth_LoginResponse;
  Auth_LogoutInput: Auth_LogoutInput;
  Auth_MinipayCreateAccountInput: Auth_MinipayCreateAccountInput;
  Auth_ResetPasswordInput: Auth_ResetPasswordInput;
  Auth_ResetPasswordResponse: Auth_ResetPasswordResponse;
  Auth_sendEmailOtpInput: Auth_SendEmailOtpInput;
  Auth_sendEmailOtpResponse: Auth_SendEmailOtpResponse;
  Auth_verifyEmailOtpInput: Auth_VerifyEmailOtpInput;
  Auth_verifyOtpResponse: Auth_VerifyOtpResponse;
  BankAccount_CreateInput: BankAccount_CreateInput;
  BankAccount_DeleteInput: BankAccount_DeleteInput;
  BankAccount_DeleteResponse: BankAccount_DeleteResponse;
  BankAccount_Response: BankAccount_Response;
  Kyc_AddBvnInput: Kyc_AddBvnInput;
  Kyc_AddBvnResponse: Kyc_AddBvnResponse;
  Kyc_AddNinInput: Kyc_AddNinInput;
  Kyc_AddNinResponse: Kyc_AddNinResponse;
  Kyc_SendEmailOtpInput: Kyc_SendEmailOtpInput;
  Kyc_SendEmailResponse: Kyc_SendEmailResponse;
  Kyc_VerifyEmailOtpInput: Kyc_VerifyEmailOtpInput;
  Kyc_VerifyEmailResponse: Kyc_VerifyEmailResponse;
  Mutation: {};
  Query: {};
  UserDto: UserDto;
  UserGetInfo: UserGetInfo;
  WalletCryptoResponse: WalletCryptoResponse;
  Boolean: Scalars['Boolean']['output'];
  WalletFiat: WalletFiat;
};

export type Advert_AdvertResponseResolvers<ContextType = any, ParentType extends ResolversParentTypes['Advert_AdvertResponse'] = ResolversParentTypes['Advert_AdvertResponse']> = {
  advertStatus?: Resolver<Maybe<ResolversTypes['AdvertStatus']>, ParentType, ContextType>;
  currencyCrypto?: Resolver<Maybe<ResolversTypes['CurrencyCrypto']>, ParentType, ContextType>;
  currencyFiat?: Resolver<Maybe<ResolversTypes['CurrencyFiat']>, ParentType, ContextType>;
  duration?: Resolver<Maybe<ResolversTypes['String']>, ParentType, ContextType>;
  id?: Resolver<ResolversTypes['ID'], ParentType, ContextType>;
  instructions?: Resolver<Maybe<ResolversTypes['String']>, ParentType, ContextType>;
  limitLower?: Resolver<Maybe<ResolversTypes['Float']>, ParentType, ContextType>;
  limitUpper?: Resolver<Maybe<ResolversTypes['Float']>, ParentType, ContextType>;
  rate?: Resolver<Maybe<ResolversTypes['String']>, ParentType, ContextType>;
  tradeType?: Resolver<Maybe<ResolversTypes['TradeType']>, ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Auth_CreateAccountResponseResolvers<ContextType = any, ParentType extends ResolversParentTypes['Auth_CreateAccountResponse'] = ResolversParentTypes['Auth_CreateAccountResponse']> = {
  message?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Auth_LoginMinipayResponseResolvers<ContextType = any, ParentType extends ResolversParentTypes['Auth_LoginMinipayResponse'] = ResolversParentTypes['Auth_LoginMinipayResponse']> = {
  email?: Resolver<Maybe<ResolversTypes['String']>, ParentType, ContextType>;
  firstname?: Resolver<Maybe<ResolversTypes['String']>, ParentType, ContextType>;
  lastname?: Resolver<Maybe<ResolversTypes['String']>, ParentType, ContextType>;
  middlename?: Resolver<Maybe<ResolversTypes['String']>, ParentType, ContextType>;
  token?: Resolver<Maybe<ResolversTypes['String']>, ParentType, ContextType>;
  walletAddress?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Auth_LoginResponseResolvers<ContextType = any, ParentType extends ResolversParentTypes['Auth_LoginResponse'] = ResolversParentTypes['Auth_LoginResponse']> = {
  country?: Resolver<ResolversTypes['Country'], ParentType, ContextType>;
  email?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  firstname?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  lastname?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  middlename?: Resolver<Maybe<ResolversTypes['String']>, ParentType, ContextType>;
  token?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Auth_ResetPasswordResponseResolvers<ContextType = any, ParentType extends ResolversParentTypes['Auth_ResetPasswordResponse'] = ResolversParentTypes['Auth_ResetPasswordResponse']> = {
  message?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Auth_SendEmailOtpResponseResolvers<ContextType = any, ParentType extends ResolversParentTypes['Auth_sendEmailOtpResponse'] = ResolversParentTypes['Auth_sendEmailOtpResponse']> = {
  message?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  token?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Auth_VerifyOtpResponseResolvers<ContextType = any, ParentType extends ResolversParentTypes['Auth_verifyOtpResponse'] = ResolversParentTypes['Auth_verifyOtpResponse']> = {
  message?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type BankAccount_DeleteResponseResolvers<ContextType = any, ParentType extends ResolversParentTypes['BankAccount_DeleteResponse'] = ResolversParentTypes['BankAccount_DeleteResponse']> = {
  message?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type BankAccount_ResponseResolvers<ContextType = any, ParentType extends ResolversParentTypes['BankAccount_Response'] = ResolversParentTypes['BankAccount_Response']> = {
  account_name?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  account_no?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  bank_name?: Resolver<ResolversTypes['BankName'], ParentType, ContextType>;
  id?: Resolver<ResolversTypes['Float'], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Kyc_AddBvnResponseResolvers<ContextType = any, ParentType extends ResolversParentTypes['Kyc_AddBvnResponse'] = ResolversParentTypes['Kyc_AddBvnResponse']> = {
  message?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Kyc_AddNinResponseResolvers<ContextType = any, ParentType extends ResolversParentTypes['Kyc_AddNinResponse'] = ResolversParentTypes['Kyc_AddNinResponse']> = {
  message?: Resolver<Maybe<ResolversTypes['String']>, ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Kyc_SendEmailResponseResolvers<ContextType = any, ParentType extends ResolversParentTypes['Kyc_SendEmailResponse'] = ResolversParentTypes['Kyc_SendEmailResponse']> = {
  message?: Resolver<Maybe<ResolversTypes['String']>, ParentType, ContextType>;
  token?: Resolver<Maybe<ResolversTypes['String']>, ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Kyc_VerifyEmailResponseResolvers<ContextType = any, ParentType extends ResolversParentTypes['Kyc_VerifyEmailResponse'] = ResolversParentTypes['Kyc_VerifyEmailResponse']> = {
  message?: Resolver<Maybe<ResolversTypes['String']>, ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type MutationResolvers<ContextType = any, ParentType extends ResolversParentTypes['Mutation'] = ResolversParentTypes['Mutation']> = {
  adverts_create?: Resolver<ResolversTypes['Advert_AdvertResponse'], ParentType, ContextType, RequireFields<MutationAdverts_CreateArgs, 'input'>>;
  adverts_delete?: Resolver<ResolversTypes['Advert_AdvertResponse'], ParentType, ContextType, RequireFields<MutationAdverts_DeleteArgs, 'input'>>;
  adverts_update?: Resolver<ResolversTypes['Advert_AdvertResponse'], ParentType, ContextType, RequireFields<MutationAdverts_UpdateArgs, 'input'>>;
  auth_createAccount?: Resolver<ResolversTypes['Auth_CreateAccountResponse'], ParentType, ContextType, RequireFields<MutationAuth_CreateAccountArgs, 'input'>>;
  auth_login?: Resolver<ResolversTypes['Auth_LoginResponse'], ParentType, ContextType, RequireFields<MutationAuth_LoginArgs, 'input'>>;
  auth_logout?: Resolver<ResolversTypes['String'], ParentType, ContextType, RequireFields<MutationAuth_LogoutArgs, 'input'>>;
  auth_minipayCreateAccount?: Resolver<ResolversTypes['Auth_LoginMinipayResponse'], ParentType, ContextType, RequireFields<MutationAuth_MinipayCreateAccountArgs, 'input'>>;
  auth_minipayLogin?: Resolver<ResolversTypes['Auth_LoginMinipayResponse'], ParentType, ContextType, RequireFields<MutationAuth_MinipayLoginArgs, 'input'>>;
  auth_resetPassword?: Resolver<ResolversTypes['Auth_ResetPasswordResponse'], ParentType, ContextType, RequireFields<MutationAuth_ResetPasswordArgs, 'input'>>;
  auth_sendEmailOtp?: Resolver<ResolversTypes['Auth_sendEmailOtpResponse'], ParentType, ContextType, RequireFields<MutationAuth_SendEmailOtpArgs, 'input'>>;
  auth_verifyEmailOtp?: Resolver<ResolversTypes['Auth_verifyOtpResponse'], ParentType, ContextType, RequireFields<MutationAuth_VerifyEmailOtpArgs, 'input'>>;
  bankAccount_create?: Resolver<ResolversTypes['BankAccount_Response'], ParentType, ContextType, RequireFields<MutationBankAccount_CreateArgs, 'input'>>;
  bankAccount_delete?: Resolver<ResolversTypes['BankAccount_DeleteResponse'], ParentType, ContextType, RequireFields<MutationBankAccount_DeleteArgs, 'input'>>;
  kyc_addBvn?: Resolver<ResolversTypes['Kyc_AddBvnResponse'], ParentType, ContextType, RequireFields<MutationKyc_AddBvnArgs, 'input'>>;
  kyc_addNin?: Resolver<ResolversTypes['Kyc_AddNinResponse'], ParentType, ContextType, RequireFields<MutationKyc_AddNinArgs, 'input'>>;
  kyc_sendEmailOtp?: Resolver<ResolversTypes['Kyc_SendEmailResponse'], ParentType, ContextType, RequireFields<MutationKyc_SendEmailOtpArgs, 'input'>>;
  kyc_verifyEmailOtp?: Resolver<ResolversTypes['Kyc_VerifyEmailResponse'], ParentType, ContextType, RequireFields<MutationKyc_VerifyEmailOtpArgs, 'input'>>;
  walletCrypto_create?: Resolver<Array<ResolversTypes['WalletCryptoResponse']>, ParentType, ContextType>;
};

export type QueryResolvers<ContextType = any, ParentType extends ResolversParentTypes['Query'] = ResolversParentTypes['Query']> = {
  adverts_getAll?: Resolver<Array<ResolversTypes['Advert_AdvertResponse']>, ParentType, ContextType, RequireFields<QueryAdverts_GetAllArgs, 'input'>>;
  adverts_getMerchantAdverts?: Resolver<Array<ResolversTypes['Advert_AdvertResponse']>, ParentType, ContextType, RequireFields<QueryAdverts_GetMerchantAdvertsArgs, 'input'>>;
  adverts_getOne?: Resolver<ResolversTypes['Advert_AdvertResponse'], ParentType, ContextType, RequireFields<QueryAdverts_GetOneArgs, 'input'>>;
  bankAccount_getAll?: Resolver<Array<ResolversTypes['BankAccount_Response']>, ParentType, ContextType>;
  user_getOne?: Resolver<ResolversTypes['UserDto'], ParentType, ContextType, RequireFields<QueryUser_GetOneArgs, 'input'>>;
  walletCrypto_getAll?: Resolver<Array<ResolversTypes['WalletCryptoResponse']>, ParentType, ContextType>;
  walletFiat_getAll?: Resolver<ResolversTypes['WalletFiat'], ParentType, ContextType>;
};

export type UserDtoResolvers<ContextType = any, ParentType extends ResolversParentTypes['UserDto'] = ResolversParentTypes['UserDto']> = {
  country?: Resolver<ResolversTypes['Country'], ParentType, ContextType>;
  email?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  firstname?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  id?: Resolver<ResolversTypes['ID'], ParentType, ContextType>;
  lastname?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  middlename?: Resolver<Maybe<ResolversTypes['String']>, ParentType, ContextType>;
  password?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type WalletCryptoResponseResolvers<ContextType = any, ParentType extends ResolversParentTypes['WalletCryptoResponse'] = ResolversParentTypes['WalletCryptoResponse']> = {
  address?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  chainType?: Resolver<ResolversTypes['ChainType'], ParentType, ContextType>;
  id?: Resolver<ResolversTypes['Float'], ParentType, ContextType>;
  minipay?: Resolver<Maybe<ResolversTypes['Boolean']>, ParentType, ContextType>;
  wallet_id?: Resolver<Maybe<ResolversTypes['String']>, ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type WalletFiatResolvers<ContextType = any, ParentType extends ResolversParentTypes['WalletFiat'] = ResolversParentTypes['WalletFiat']> = {
  accountName?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  accountNumber?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  balance?: Resolver<ResolversTypes['Float'], ParentType, ContextType>;
  bankName?: Resolver<ResolversTypes['String'], ParentType, ContextType>;
  __isTypeOf?: IsTypeOfResolverFn<ParentType, ContextType>;
};

export type Resolvers<ContextType = any> = {
  Advert_AdvertResponse?: Advert_AdvertResponseResolvers<ContextType>;
  Auth_CreateAccountResponse?: Auth_CreateAccountResponseResolvers<ContextType>;
  Auth_LoginMinipayResponse?: Auth_LoginMinipayResponseResolvers<ContextType>;
  Auth_LoginResponse?: Auth_LoginResponseResolvers<ContextType>;
  Auth_ResetPasswordResponse?: Auth_ResetPasswordResponseResolvers<ContextType>;
  Auth_sendEmailOtpResponse?: Auth_SendEmailOtpResponseResolvers<ContextType>;
  Auth_verifyOtpResponse?: Auth_VerifyOtpResponseResolvers<ContextType>;
  BankAccount_DeleteResponse?: BankAccount_DeleteResponseResolvers<ContextType>;
  BankAccount_Response?: BankAccount_ResponseResolvers<ContextType>;
  Kyc_AddBvnResponse?: Kyc_AddBvnResponseResolvers<ContextType>;
  Kyc_AddNinResponse?: Kyc_AddNinResponseResolvers<ContextType>;
  Kyc_SendEmailResponse?: Kyc_SendEmailResponseResolvers<ContextType>;
  Kyc_VerifyEmailResponse?: Kyc_VerifyEmailResponseResolvers<ContextType>;
  Mutation?: MutationResolvers<ContextType>;
  Query?: QueryResolvers<ContextType>;
  UserDto?: UserDtoResolvers<ContextType>;
  WalletCryptoResponse?: WalletCryptoResponseResolvers<ContextType>;
  WalletFiat?: WalletFiatResolvers<ContextType>;
};

