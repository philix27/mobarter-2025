/* eslint-disable */
import { TypedDocumentNode as DocumentNode } from '@graphql-typed-document-node/core';
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
  fiatAmountPerCrypto?: Maybe<Scalars['Float']['output']>;
  id: Scalars['ID']['output'];
  instructions?: Maybe<Scalars['String']['output']>;
  limitLower?: Maybe<Scalars['Float']['output']>;
  limitUpper?: Maybe<Scalars['Float']['output']>;
  rate?: Maybe<Scalars['String']['output']>;
  tradeType?: Maybe<TradeType>;
  wallet_address?: Maybe<Scalars['String']['output']>;
};

export type Advert_CreateInput = {
  advertStatus: AdvertStatus;
  currencyCrypto: CurrencyCrypto;
  currencyFiat: CurrencyFiat;
  duration: Scalars['String']['input'];
  fiatAmountPerCrypto: Scalars['Float']['input'];
  instructions: Scalars['String']['input'];
  limitLower: Scalars['Float']['input'];
  limitUpper: Scalars['Float']['input'];
  rate: Scalars['String']['input'];
  tradeType: TradeType;
  wallet_address: Scalars['String']['input'];
};

export type Advert_DeleteInput = {
  id: Scalars['ID']['input'];
};

export type Advert_GetAllInput = {
  filter?: InputMaybe<Scalars['String']['input']>;
};

export type Advert_GetOneInput = {
  id: Scalars['Int']['input'];
};

export type Advert_GetResponse = {
  __typename?: 'Advert_GetResponse';
  advertStatus?: Maybe<AdvertStatus>;
  currencyCrypto?: Maybe<CurrencyCrypto>;
  currencyFiat?: Maybe<CurrencyFiat>;
  duration?: Maybe<Scalars['String']['output']>;
  fiatAmountPerCrypto?: Maybe<Scalars['Float']['output']>;
  id: Scalars['ID']['output'];
  instructions?: Maybe<Scalars['String']['output']>;
  limitLower?: Maybe<Scalars['Float']['output']>;
  limitUpper?: Maybe<Scalars['Float']['output']>;
  merchant_nickname: Scalars['String']['output'];
  merchant_trade_count: Scalars['Float']['output'];
  merchant_wallet: Scalars['String']['output'];
  rate?: Maybe<Scalars['String']['output']>;
  tradeType?: Maybe<TradeType>;
  wallet_address?: Maybe<Scalars['String']['output']>;
};

export type Advert_UpdateInput = {
  advertStatus: AdvertStatus;
  currencyCrypto: CurrencyCrypto;
  currencyFiat: CurrencyFiat;
  duration: Scalars['String']['input'];
  fiatAmountPerCrypto: Scalars['Float']['input'];
  id: Scalars['ID']['input'];
  instructions: Scalars['String']['input'];
  limitLower: Scalars['Float']['input'];
  limitUpper: Scalars['Float']['input'];
  rate: Scalars['String']['input'];
  tradeType: TradeType;
  wallet_address: Scalars['String']['input'];
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

export type ExchangeRate_Response = {
  __typename?: 'ExchangeRate_Response';
  EUR: Scalars['Float']['output'];
  GHS: Scalars['Float']['output'];
  KES: Scalars['Float']['output'];
  NGN: Scalars['Float']['output'];
  USD: Scalars['Float']['output'];
};

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
  adverts_getAll: Array<Advert_GetResponse>;
  adverts_getMerchantAdverts: Array<Advert_AdvertResponse>;
  adverts_getOne: Advert_GetResponse;
  bankAccount_getAll: Array<BankAccount_Response>;
  fxRate_GetAll: ExchangeRate_Response;
  user_getOne: UserDto;
  walletCrypto_getAll: Array<WalletCryptoResponse>;
  walletFiat_getAll: WalletFiat;
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

export type Adverts_UpdateMutationVariables = Exact<{
  input: Advert_UpdateInput;
}>;


export type Adverts_UpdateMutation = { __typename?: 'Mutation', adverts_update: { __typename?: 'Advert_AdvertResponse', rate?: string | null, currencyFiat?: CurrencyFiat | null, currencyCrypto?: CurrencyCrypto | null, advertStatus?: AdvertStatus | null, duration?: string | null, limitLower?: number | null, limitUpper?: number | null, tradeType?: TradeType | null } };

export type Adverts_CreateMutationVariables = Exact<{
  input: Advert_CreateInput;
}>;


export type Adverts_CreateMutation = { __typename?: 'Mutation', adverts_create: { __typename?: 'Advert_AdvertResponse', rate?: string | null, advertStatus?: AdvertStatus | null, limitLower?: number | null, limitUpper?: number | null, tradeType?: TradeType | null, currencyFiat?: CurrencyFiat | null, currencyCrypto?: CurrencyCrypto | null } };

export type Adverts_DeleteMutationVariables = Exact<{
  input: Advert_DeleteInput;
}>;


export type Adverts_DeleteMutation = { __typename?: 'Mutation', adverts_delete: { __typename?: 'Advert_AdvertResponse', rate?: string | null, currencyFiat?: CurrencyFiat | null, currencyCrypto?: CurrencyCrypto | null, advertStatus?: AdvertStatus | null, duration?: string | null, limitLower?: number | null, limitUpper?: number | null, tradeType?: TradeType | null } };

export type Adverts_GetAllQueryVariables = Exact<{ [key: string]: never; }>;


export type Adverts_GetAllQuery = { __typename?: 'Query', adverts_getAll: Array<{ __typename?: 'Advert_GetResponse', id: string, advertStatus?: AdvertStatus | null, duration?: string | null, tradeType?: TradeType | null, rate?: string | null, instructions?: string | null, limitLower?: number | null, limitUpper?: number | null, currencyFiat?: CurrencyFiat | null, currencyCrypto?: CurrencyCrypto | null, merchant_wallet: string, merchant_nickname: string, merchant_trade_count: number, wallet_address?: string | null, fiatAmountPerCrypto?: number | null }> };

export type Adverts_GetOneQueryVariables = Exact<{
  input: Advert_GetOneInput;
}>;


export type Adverts_GetOneQuery = { __typename?: 'Query', adverts_getOne: { __typename?: 'Advert_GetResponse', id: string, advertStatus?: AdvertStatus | null, duration?: string | null, tradeType?: TradeType | null, rate?: string | null, instructions?: string | null, limitLower?: number | null, limitUpper?: number | null, currencyFiat?: CurrencyFiat | null, currencyCrypto?: CurrencyCrypto | null, merchant_wallet: string, merchant_nickname: string, merchant_trade_count: number, wallet_address?: string | null, fiatAmountPerCrypto?: number | null } };

export type Auth_MinipayLoginMutationVariables = Exact<{
  input: Auth_LoginMinipayInput;
}>;


export type Auth_MinipayLoginMutation = { __typename?: 'Mutation', auth_minipayLogin: { __typename?: 'Auth_LoginMinipayResponse', firstname?: string | null, lastname?: string | null, middlename?: string | null, email?: string | null, token?: string | null } };

export type Auth_MinipayCreateAccountMutationVariables = Exact<{
  input: Auth_MinipayCreateAccountInput;
}>;


export type Auth_MinipayCreateAccountMutation = { __typename?: 'Mutation', auth_minipayCreateAccount: { __typename?: 'Auth_LoginMinipayResponse', firstname?: string | null, lastname?: string | null, middlename?: string | null, email?: string | null, token?: string | null } };

export type Auth_LoginMutationVariables = Exact<{
  input: Auth_LoginInput;
}>;


export type Auth_LoginMutation = { __typename?: 'Mutation', auth_login: { __typename?: 'Auth_LoginResponse', firstname: string, country: Country, lastname: string, middlename?: string | null, email: string, token: string } };

export type Auth_ResetPasswordMutationVariables = Exact<{
  input: Auth_ResetPasswordInput;
}>;


export type Auth_ResetPasswordMutation = { __typename?: 'Mutation', auth_resetPassword: { __typename?: 'Auth_ResetPasswordResponse', message: string } };

export type Auth_SendEmailOtpMutationVariables = Exact<{
  input: Auth_SendEmailOtpInput;
}>;


export type Auth_SendEmailOtpMutation = { __typename?: 'Mutation', auth_sendEmailOtp: { __typename?: 'Auth_sendEmailOtpResponse', message: string, token: string } };

export type Auth_VerifyEmailOtpMutationVariables = Exact<{
  input: Auth_VerifyEmailOtpInput;
}>;


export type Auth_VerifyEmailOtpMutation = { __typename?: 'Mutation', auth_verifyEmailOtp: { __typename?: 'Auth_verifyOtpResponse', message: string } };

export type Auth_CreateAccountMutationVariables = Exact<{
  input: Auth_CreateAccountInput;
}>;


export type Auth_CreateAccountMutation = { __typename?: 'Mutation', auth_createAccount: { __typename?: 'Auth_CreateAccountResponse', message: string } };

export type BankAccount_DeleteMutationVariables = Exact<{
  input: BankAccount_DeleteInput;
}>;


export type BankAccount_DeleteMutation = { __typename?: 'Mutation', bankAccount_delete: { __typename?: 'BankAccount_DeleteResponse', message: string } };

export type BankAccount_CreateMutationVariables = Exact<{
  input: BankAccount_CreateInput;
}>;


export type BankAccount_CreateMutation = { __typename?: 'Mutation', bankAccount_create: { __typename?: 'BankAccount_Response', id: number, bank_name: BankName, account_name: string, account_no: string } };

export type BankAccount_GetAllQueryVariables = Exact<{ [key: string]: never; }>;


export type BankAccount_GetAllQuery = { __typename?: 'Query', bankAccount_getAll: Array<{ __typename?: 'BankAccount_Response', id: number, account_name: string, account_no: string, bank_name: BankName }> };

export type FxRate_GetAllQueryVariables = Exact<{ [key: string]: never; }>;


export type FxRate_GetAllQuery = { __typename?: 'Query', fxRate_GetAll: { __typename?: 'ExchangeRate_Response', GHS: number, NGN: number, KES: number, USD: number, EUR: number } };

export type WalletCrypto_CreateMutationVariables = Exact<{ [key: string]: never; }>;


export type WalletCrypto_CreateMutation = { __typename?: 'Mutation', walletCrypto_create: Array<{ __typename?: 'WalletCryptoResponse', address: string, chainType: ChainType, id: number, wallet_id?: string | null }> };

export type WalletCrypto_GetAllQueryVariables = Exact<{ [key: string]: never; }>;


export type WalletCrypto_GetAllQuery = { __typename?: 'Query', walletCrypto_getAll: Array<{ __typename?: 'WalletCryptoResponse', address: string, chainType: ChainType, id: number, wallet_id?: string | null }> };


export const Adverts_UpdateDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"Adverts_update"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Advert_UpdateInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"adverts_update"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"rate"}},{"kind":"Field","name":{"kind":"Name","value":"currencyFiat"}},{"kind":"Field","name":{"kind":"Name","value":"currencyCrypto"}},{"kind":"Field","name":{"kind":"Name","value":"advertStatus"}},{"kind":"Field","name":{"kind":"Name","value":"duration"}},{"kind":"Field","name":{"kind":"Name","value":"limitLower"}},{"kind":"Field","name":{"kind":"Name","value":"limitUpper"}},{"kind":"Field","name":{"kind":"Name","value":"tradeType"}}]}}]}}]} as unknown as DocumentNode<Adverts_UpdateMutation, Adverts_UpdateMutationVariables>;
export const Adverts_CreateDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"Adverts_create"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Advert_CreateInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"adverts_create"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"rate"}},{"kind":"Field","name":{"kind":"Name","value":"advertStatus"}},{"kind":"Field","name":{"kind":"Name","value":"limitLower"}},{"kind":"Field","name":{"kind":"Name","value":"limitUpper"}},{"kind":"Field","name":{"kind":"Name","value":"tradeType"}},{"kind":"Field","name":{"kind":"Name","value":"currencyFiat"}},{"kind":"Field","name":{"kind":"Name","value":"currencyCrypto"}}]}}]}}]} as unknown as DocumentNode<Adverts_CreateMutation, Adverts_CreateMutationVariables>;
export const Adverts_DeleteDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"Adverts_delete"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Advert_DeleteInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"adverts_delete"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"rate"}},{"kind":"Field","name":{"kind":"Name","value":"currencyFiat"}},{"kind":"Field","name":{"kind":"Name","value":"currencyCrypto"}},{"kind":"Field","name":{"kind":"Name","value":"advertStatus"}},{"kind":"Field","name":{"kind":"Name","value":"duration"}},{"kind":"Field","name":{"kind":"Name","value":"limitLower"}},{"kind":"Field","name":{"kind":"Name","value":"limitUpper"}},{"kind":"Field","name":{"kind":"Name","value":"tradeType"}}]}}]}}]} as unknown as DocumentNode<Adverts_DeleteMutation, Adverts_DeleteMutationVariables>;
export const Adverts_GetAllDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"Adverts_getAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"adverts_getAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"id"}},{"kind":"Field","name":{"kind":"Name","value":"advertStatus"}},{"kind":"Field","name":{"kind":"Name","value":"duration"}},{"kind":"Field","name":{"kind":"Name","value":"tradeType"}},{"kind":"Field","name":{"kind":"Name","value":"rate"}},{"kind":"Field","name":{"kind":"Name","value":"instructions"}},{"kind":"Field","name":{"kind":"Name","value":"limitLower"}},{"kind":"Field","name":{"kind":"Name","value":"limitUpper"}},{"kind":"Field","name":{"kind":"Name","value":"currencyFiat"}},{"kind":"Field","name":{"kind":"Name","value":"currencyCrypto"}},{"kind":"Field","name":{"kind":"Name","value":"merchant_wallet"}},{"kind":"Field","name":{"kind":"Name","value":"merchant_nickname"}},{"kind":"Field","name":{"kind":"Name","value":"merchant_trade_count"}},{"kind":"Field","name":{"kind":"Name","value":"wallet_address"}},{"kind":"Field","name":{"kind":"Name","value":"fiatAmountPerCrypto"}}]}}]}}]} as unknown as DocumentNode<Adverts_GetAllQuery, Adverts_GetAllQueryVariables>;
export const Adverts_GetOneDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"Adverts_getOne"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Advert_GetOneInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"adverts_getOne"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"id"}},{"kind":"Field","name":{"kind":"Name","value":"advertStatus"}},{"kind":"Field","name":{"kind":"Name","value":"duration"}},{"kind":"Field","name":{"kind":"Name","value":"tradeType"}},{"kind":"Field","name":{"kind":"Name","value":"rate"}},{"kind":"Field","name":{"kind":"Name","value":"instructions"}},{"kind":"Field","name":{"kind":"Name","value":"limitLower"}},{"kind":"Field","name":{"kind":"Name","value":"limitUpper"}},{"kind":"Field","name":{"kind":"Name","value":"currencyFiat"}},{"kind":"Field","name":{"kind":"Name","value":"currencyCrypto"}},{"kind":"Field","name":{"kind":"Name","value":"merchant_wallet"}},{"kind":"Field","name":{"kind":"Name","value":"merchant_nickname"}},{"kind":"Field","name":{"kind":"Name","value":"merchant_trade_count"}},{"kind":"Field","name":{"kind":"Name","value":"wallet_address"}},{"kind":"Field","name":{"kind":"Name","value":"fiatAmountPerCrypto"}}]}}]}}]} as unknown as DocumentNode<Adverts_GetOneQuery, Adverts_GetOneQueryVariables>;
export const Auth_MinipayLoginDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"Auth_minipayLogin"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Auth_LoginMinipayInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"auth_minipayLogin"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"firstname"}},{"kind":"Field","name":{"kind":"Name","value":"lastname"}},{"kind":"Field","name":{"kind":"Name","value":"middlename"}},{"kind":"Field","name":{"kind":"Name","value":"email"}},{"kind":"Field","name":{"kind":"Name","value":"token"}}]}}]}}]} as unknown as DocumentNode<Auth_MinipayLoginMutation, Auth_MinipayLoginMutationVariables>;
export const Auth_MinipayCreateAccountDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"Auth_minipayCreateAccount"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Auth_MinipayCreateAccountInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"auth_minipayCreateAccount"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"firstname"}},{"kind":"Field","name":{"kind":"Name","value":"lastname"}},{"kind":"Field","name":{"kind":"Name","value":"middlename"}},{"kind":"Field","name":{"kind":"Name","value":"email"}},{"kind":"Field","name":{"kind":"Name","value":"token"}}]}}]}}]} as unknown as DocumentNode<Auth_MinipayCreateAccountMutation, Auth_MinipayCreateAccountMutationVariables>;
export const Auth_LoginDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"Auth_login"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Auth_LoginInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"auth_login"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"firstname"}},{"kind":"Field","name":{"kind":"Name","value":"country"}},{"kind":"Field","name":{"kind":"Name","value":"lastname"}},{"kind":"Field","name":{"kind":"Name","value":"middlename"}},{"kind":"Field","name":{"kind":"Name","value":"email"}},{"kind":"Field","name":{"kind":"Name","value":"token"}}]}}]}}]} as unknown as DocumentNode<Auth_LoginMutation, Auth_LoginMutationVariables>;
export const Auth_ResetPasswordDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"Auth_resetPassword"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Auth_ResetPasswordInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"auth_resetPassword"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}}]}}]}}]} as unknown as DocumentNode<Auth_ResetPasswordMutation, Auth_ResetPasswordMutationVariables>;
export const Auth_SendEmailOtpDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"Auth_sendEmailOtp"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Auth_sendEmailOtpInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"auth_sendEmailOtp"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}},{"kind":"Field","name":{"kind":"Name","value":"token"}}]}}]}}]} as unknown as DocumentNode<Auth_SendEmailOtpMutation, Auth_SendEmailOtpMutationVariables>;
export const Auth_VerifyEmailOtpDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"Auth_verifyEmailOtp"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Auth_verifyEmailOtpInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"auth_verifyEmailOtp"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}}]}}]}}]} as unknown as DocumentNode<Auth_VerifyEmailOtpMutation, Auth_VerifyEmailOtpMutationVariables>;
export const Auth_CreateAccountDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"Auth_CreateAccount"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Auth_CreateAccountInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"auth_createAccount"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}}]}}]}}]} as unknown as DocumentNode<Auth_CreateAccountMutation, Auth_CreateAccountMutationVariables>;
export const BankAccount_DeleteDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"BankAccount_delete"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"BankAccount_DeleteInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"bankAccount_delete"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}}]}}]}}]} as unknown as DocumentNode<BankAccount_DeleteMutation, BankAccount_DeleteMutationVariables>;
export const BankAccount_CreateDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"BankAccount_create"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"BankAccount_CreateInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"bankAccount_create"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"id"}},{"kind":"Field","name":{"kind":"Name","value":"bank_name"}},{"kind":"Field","name":{"kind":"Name","value":"account_name"}},{"kind":"Field","name":{"kind":"Name","value":"account_no"}}]}}]}}]} as unknown as DocumentNode<BankAccount_CreateMutation, BankAccount_CreateMutationVariables>;
export const BankAccount_GetAllDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"BankAccount_getAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"bankAccount_getAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"id"}},{"kind":"Field","name":{"kind":"Name","value":"account_name"}},{"kind":"Field","name":{"kind":"Name","value":"account_no"}},{"kind":"Field","name":{"kind":"Name","value":"bank_name"}}]}}]}}]} as unknown as DocumentNode<BankAccount_GetAllQuery, BankAccount_GetAllQueryVariables>;
export const FxRate_GetAllDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"FxRate_GetAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"fxRate_GetAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"GHS"}},{"kind":"Field","name":{"kind":"Name","value":"NGN"}},{"kind":"Field","name":{"kind":"Name","value":"KES"}},{"kind":"Field","name":{"kind":"Name","value":"USD"}},{"kind":"Field","name":{"kind":"Name","value":"EUR"}}]}}]}}]} as unknown as DocumentNode<FxRate_GetAllQuery, FxRate_GetAllQueryVariables>;
export const WalletCrypto_CreateDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"WalletCrypto_create"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"walletCrypto_create"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"address"}},{"kind":"Field","name":{"kind":"Name","value":"chainType"}},{"kind":"Field","name":{"kind":"Name","value":"id"}},{"kind":"Field","name":{"kind":"Name","value":"wallet_id"}}]}}]}}]} as unknown as DocumentNode<WalletCrypto_CreateMutation, WalletCrypto_CreateMutationVariables>;
export const WalletCrypto_GetAllDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"WalletCrypto_getAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"walletCrypto_getAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"address"}},{"kind":"Field","name":{"kind":"Name","value":"chainType"}},{"kind":"Field","name":{"kind":"Name","value":"id"}},{"kind":"Field","name":{"kind":"Name","value":"wallet_id"}}]}}]}}]} as unknown as DocumentNode<WalletCrypto_GetAllQuery, WalletCrypto_GetAllQueryVariables>;