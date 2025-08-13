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

export type Auth_FirebaseLoginInput = {
  idToken: Scalars['String']['input'];
};

export type Auth_FirebaseLoginResponse = {
  __typename?: 'Auth_FirebaseLoginResponse';
  email?: Maybe<Scalars['String']['output']>;
  firstname?: Maybe<Scalars['String']['output']>;
  lastname?: Maybe<Scalars['String']['output']>;
  middlename?: Maybe<Scalars['String']['output']>;
  token?: Maybe<Scalars['String']['output']>;
  walletAddress?: Maybe<Scalars['String']['output']>;
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

export type Auth_TelegramLoginInput = {
  telegramUserId: Scalars['String']['input'];
  walletAddress: Scalars['String']['input'];
};

export type Auth_TelegramLoginResponse = {
  __typename?: 'Auth_TelegramLoginResponse';
  email?: Maybe<Scalars['String']['output']>;
  firstname?: Maybe<Scalars['String']['output']>;
  lastname?: Maybe<Scalars['String']['output']>;
  middlename?: Maybe<Scalars['String']['output']>;
  token?: Maybe<Scalars['String']['output']>;
  walletAddress: Scalars['String']['output'];
};

export type Auth_ThirdwebLoginInput = {
  email: Scalars['String']['input'];
  payload: Scalars['String']['input'];
  walletAddress: Scalars['String']['input'];
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
  bankCode?: InputMaybe<Scalars['String']['input']>;
  bankName: Scalars['String']['input'];
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
  bankCode?: Maybe<Scalars['String']['output']>;
  bank_name: Scalars['String']['output'];
  id: Scalars['Float']['output'];
};

export type BankGetAccountName_Input = {
  accountNo: Scalars['String']['input'];
  bankCode?: InputMaybe<Scalars['String']['input']>;
};

export type BankGetAccountName_Response = {
  __typename?: 'BankGetAccountName_Response';
  account_name: Scalars['String']['output'];
  account_number: Scalars['String']['output'];
};

export type BankList_Response = {
  __typename?: 'BankList_Response';
  bankCode?: Maybe<Scalars['String']['output']>;
  bankName: Scalars['String']['output'];
};

export type BettingPaymentInput = {
  countryCode: Country;
  customer_id: Scalars['String']['input'];
  payment: PaymentInput;
  service_id: Scalars['String']['input'];
};

export type BettingPaymentResponse = {
  __typename?: 'BettingPaymentResponse';
  amount: Scalars['Int']['output'];
  customer_email_address: Scalars['String']['output'];
  customer_id: Scalars['String']['output'];
  customer_name: Scalars['String']['output'];
  customer_phone_number: Scalars['String']['output'];
  customer_username: Scalars['String']['output'];
  order_id: Scalars['Int']['output'];
  product_name: Scalars['String']['output'];
  request_id: Scalars['String']['output'];
  service_name: Scalars['String']['output'];
  status: Scalars['String']['output'];
};

export type BettingPricesResponse = {
  __typename?: 'BettingPricesResponse';
  amount: Scalars['Float']['output'];
};

export type BettingProvidersInput = {
  countryCode: Country;
};

export type BettingProvidersResponse = {
  __typename?: 'BettingProvidersResponse';
  logo: Scalars['String']['output'];
  name: Scalars['String']['output'];
};

export enum ChainType {
  Cosmos = 'Cosmos',
  Ethereum = 'Ethereum',
  Solana = 'Solana'
}

export enum Country {
  Gh = 'GH',
  Ke = 'KE',
  Mw = 'MW',
  Ng = 'NG',
  Rw = 'RW',
  Tz = 'TZ',
  Ug = 'UG',
  Za = 'ZA'
}

export enum CredentialsStatus {
  Failed = 'FAILED',
  None = 'NONE',
  Review = 'REVIEW',
  Valid = 'VALID'
}

export type ElectricityBill_PaymentInput = {
  amount: Scalars['Int']['input'];
  countryCode: Country;
  customerAddress: Scalars['String']['input'];
  customerName: Scalars['String']['input'];
  meterNumber: Scalars['String']['input'];
  meterType: Scalars['String']['input'];
  payment: PaymentInput;
  reference: Scalars['String']['input'];
  service: Scalars['String']['input'];
};

export type ElectricityBill_PaymentResponse = {
  __typename?: 'ElectricityBill_PaymentResponse';
  amount: Scalars['String']['output'];
  biller: Scalars['String']['output'];
  bonusToken: Scalars['String']['output'];
  chargedAmount: Scalars['Int']['output'];
  commission: Scalars['Int']['output'];
  customerId: Scalars['String']['output'];
  reference: Scalars['String']['output'];
  token: Scalars['String']['output'];
  transactionDate: Scalars['String']['output'];
  transactionId: Scalars['String']['output'];
  unit: Scalars['String']['output'];
};

export type ElectricityBill_ProviderInput = {
  countryCode: Country;
};

export type ElectricityBill_ProvidersResponse = {
  __typename?: 'ElectricityBill_ProvidersResponse';
  category: Scalars['String']['output'];
  logo: Scalars['String']['output'];
  name: Scalars['String']['output'];
  slug: Scalars['String']['output'];
};

export type ElectricityBill_ValidateAccountInput = {
  countryCode: Country;
  meterNumber: Scalars['String']['input'];
  meterType: Scalars['String']['input'];
  service: Scalars['String']['input'];
};

export type ElectricityBill_ValidateAccountResponse = {
  __typename?: 'ElectricityBill_ValidateAccountResponse';
  customerAddress: Scalars['String']['output'];
  customerName: Scalars['String']['output'];
  meterNumber: Scalars['String']['output'];
  meterType: Scalars['String']['output'];
  minimuVendAmount: Scalars['Int']['output'];
};

export type ExchangeRate_Response = {
  __typename?: 'ExchangeRate_Response';
  EUR: Scalars['Float']['output'];
  GH: Scalars['Float']['output'];
  KE: Scalars['Float']['output'];
  MW: Scalars['Float']['output'];
  NG: Scalars['Float']['output'];
  RW: Scalars['Float']['output'];
  TZ: Scalars['Float']['output'];
  UG: Scalars['Float']['output'];
  USD: Scalars['Float']['output'];
  ZA: Scalars['Float']['output'];
};

export type IAirtimeOperator = {
  __typename?: 'IAirtimeOperator';
  logo: Scalars['String']['output'];
  maxAmount?: Maybe<Scalars['Int']['output']>;
  minAmount?: Maybe<Scalars['Int']['output']>;
  name: Scalars['String']['output'];
  operatorId: Scalars['Int']['output'];
  suggestedAmounts?: Maybe<Array<Scalars['Int']['output']>>;
};

export type IDataPlan = {
  __typename?: 'IDataPlan';
  amount: Scalars['Int']['output'];
  desc: Scalars['String']['output'];
};

export type IOperator = {
  __typename?: 'IOperator';
  logo: Scalars['String']['output'];
  name: Scalars['String']['output'];
  operatorId: Scalars['Int']['output'];
  plans?: Maybe<Array<IDataPlan>>;
};

export type Kyc_AddAddressInfoInput = {
  country: Country;
  houseAddress: Scalars['String']['input'];
  state: Scalars['String']['input'];
  street: Scalars['String']['input'];
};

export type Kyc_AddAddressProofInput = {
  proofOfAddressUrl: Scalars['String']['input'];
};

export type Kyc_AddBvnInput = {
  bvn: Scalars['String']['input'];
};

export type Kyc_AddBvnResponse = {
  __typename?: 'Kyc_AddBvnResponse';
  message: Scalars['String']['output'];
};

export type Kyc_AddDobInput = {
  dob: Scalars['String']['input'];
};

export type Kyc_AddNamesInput = {
  firstName: Scalars['String']['input'];
  lastName: Scalars['String']['input'];
  middleName?: InputMaybe<Scalars['String']['input']>;
};

export type Kyc_AddNinInput = {
  nin: Scalars['String']['input'];
};

export type Kyc_AddNinResponse = {
  __typename?: 'Kyc_AddNinResponse';
  message?: Maybe<Scalars['String']['output']>;
};

export type Kyc_CreateTransactionPinInput = {
  pin: Scalars['String']['input'];
};

export type Kyc_Response = {
  __typename?: 'Kyc_Response';
  message: Scalars['String']['output'];
};

export type Kyc_SendOtpResponse = {
  __typename?: 'Kyc_SendOtpResponse';
  message: Scalars['String']['output'];
  otpToken: Scalars['String']['output'];
};

export type Kyc_SendPhoneOtpInput = {
  phone: Scalars['String']['input'];
};

export type Kyc_VerifyPhoneOtpAndSubmitCredentialsInput = {
  bvn: Scalars['String']['input'];
  country: Country;
  dob: Scalars['String']['input'];
  firstName: Scalars['String']['input'];
  houseAddress: Scalars['String']['input'];
  lastName: Scalars['String']['input'];
  middleName?: InputMaybe<Scalars['String']['input']>;
  nin: Scalars['String']['input'];
  otp: Scalars['String']['input'];
  phone: Scalars['String']['input'];
  state: Scalars['String']['input'];
  street: Scalars['String']['input'];
  token: Scalars['String']['input'];
};

export type Mutation = {
  __typename?: 'Mutation';
  auth_createAccount: Auth_CreateAccountResponse;
  auth_firebaseLogin: Auth_FirebaseLoginResponse;
  auth_login: Auth_LoginResponse;
  auth_loginTelegram: Auth_TelegramLoginResponse;
  auth_logout: Scalars['String']['output'];
  auth_minipayCreateAccount: Auth_LoginMinipayResponse;
  auth_minipayLogin: Auth_LoginMinipayResponse;
  auth_resetPassword: Auth_ResetPasswordResponse;
  auth_sendEmailOtp: Auth_SendEmailOtpResponse;
  auth_thirdwebLogin: Auth_LoginMinipayResponse;
  auth_verifyEmailOtp: Auth_VerifyOtpResponse;
  bankAccount_create: BankAccount_Response;
  bankAccount_delete: BankAccount_DeleteResponse;
  electricityBill_makePayment: ElectricityBill_PaymentResponse;
  electricityBill_verifyAccount: ElectricityBill_ValidateAccountResponse;
  fundBetting_makePayment: BettingPaymentResponse;
  kyc_addAddressInfo: Kyc_Response;
  kyc_addAddressProof: Kyc_Response;
  kyc_addBvn: Kyc_AddBvnResponse;
  kyc_addDob: Kyc_Response;
  kyc_addNames: Kyc_Response;
  kyc_addNin: Kyc_AddNinResponse;
  kyc_createTransactionPin: Kyc_Response;
  kyc_sendPhoneOtp: Kyc_SendOtpResponse;
  kyc_verifyPhoneOtpAndSubmitCredentials: Kyc_Response;
  onchain_claim: Onchain_ClaimRewardsResponse;
  orders_Appeal: Order_Response;
  orders_Cancel: Order_Response;
  orders_CreateSell: Order_CreteSellResponse;
  orders_MoveCryptoToEscrow: Order_Response;
  tvBills_makePayment: TvBill_PaymentResponse;
  tvBills_validateAccount: TvBill_ValidateAccountResponse;
  utility_payBill: Utilities_PurchaseTopUpResponse;
  utility_purchaseAirtime: Utilities_PurchaseTopUpResponse;
  utility_purchaseDataBundle: Utilities_PurchaseTopUpResponse;
  walletCrypto_create: Array<WalletCryptoResponse>;
  walletCrypto_mobileCreate: Wallet_CreateResponse;
};


export type MutationAuth_CreateAccountArgs = {
  input: Auth_CreateAccountInput;
};


export type MutationAuth_FirebaseLoginArgs = {
  input: Auth_FirebaseLoginInput;
};


export type MutationAuth_LoginArgs = {
  input: Auth_LoginInput;
};


export type MutationAuth_LoginTelegramArgs = {
  input: Auth_TelegramLoginInput;
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


export type MutationAuth_ThirdwebLoginArgs = {
  input: Auth_ThirdwebLoginInput;
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


export type MutationElectricityBill_MakePaymentArgs = {
  input: ElectricityBill_PaymentInput;
};


export type MutationElectricityBill_VerifyAccountArgs = {
  input: ElectricityBill_ValidateAccountInput;
};


export type MutationFundBetting_MakePaymentArgs = {
  input: BettingPaymentInput;
};


export type MutationKyc_AddAddressInfoArgs = {
  input: Kyc_AddAddressInfoInput;
};


export type MutationKyc_AddAddressProofArgs = {
  input: Kyc_AddAddressProofInput;
};


export type MutationKyc_AddBvnArgs = {
  input: Kyc_AddBvnInput;
};


export type MutationKyc_AddDobArgs = {
  input: Kyc_AddDobInput;
};


export type MutationKyc_AddNamesArgs = {
  input: Kyc_AddNamesInput;
};


export type MutationKyc_AddNinArgs = {
  input: Kyc_AddNinInput;
};


export type MutationKyc_CreateTransactionPinArgs = {
  input: Kyc_CreateTransactionPinInput;
};


export type MutationKyc_SendPhoneOtpArgs = {
  input: Kyc_SendPhoneOtpInput;
};


export type MutationKyc_VerifyPhoneOtpAndSubmitCredentialsArgs = {
  input: Kyc_VerifyPhoneOtpAndSubmitCredentialsInput;
};


export type MutationOnchain_ClaimArgs = {
  input: Onchain_ClaimRewardsInput;
};


export type MutationOrders_AppealArgs = {
  input: Order_AppealInput;
};


export type MutationOrders_CancelArgs = {
  input: Order_CancelInput;
};


export type MutationOrders_CreateSellArgs = {
  input: Order_CreteSellInput;
};


export type MutationOrders_MoveCryptoToEscrowArgs = {
  input: Order_MoveCryptoToEscrowInput;
};


export type MutationTvBills_MakePaymentArgs = {
  input: TvBill_PaymentInput;
};


export type MutationTvBills_ValidateAccountArgs = {
  input: TvBill_ValidateAccountInput;
};


export type MutationUtility_PayBillArgs = {
  input: Utilities_PurchaseDataBundleInput;
};


export type MutationUtility_PurchaseAirtimeArgs = {
  input: Utilities_PurchaseAirtimeInput;
};


export type MutationUtility_PurchaseDataBundleArgs = {
  input: Utilities_PurchaseDataBundleInput;
};


export type MutationWalletCrypto_MobileCreateArgs = {
  input: Wallet_CreateInput;
};

export type Onchain_ClaimRewardsInput = {
  category?: InputMaybe<Scalars['String']['input']>;
  claimTokenAddress?: InputMaybe<Scalars['String']['input']>;
  feedback: Scalars['String']['input'];
  payment: PaymentInput;
};

export type Onchain_ClaimRewardsResponse = {
  __typename?: 'Onchain_ClaimRewardsResponse';
  message: Scalars['String']['output'];
};

export enum OrderActions {
  Appeal = 'Appeal',
  Cancel = 'Cancel',
  FaitReceived = 'FaitReceived',
  FaitSent = 'FaitSent',
  LockCrypto = 'LockCrypto',
  ReleaseCrypto = 'ReleaseCrypto'
}

export enum OrderStatus {
  Appeal = 'APPEAL',
  Cancel = 'CANCEL',
  Completed = 'COMPLETED',
  Pending = 'PENDING'
}

export type Order_AppealInput = {
  id: Scalars['ID']['input'];
  reason: Scalars['String']['input'];
};

export type Order_CancelInput = {
  id: Scalars['ID']['input'];
  reason: Scalars['String']['input'];
};

export type Order_CreteSellInput = {
  action_merchant?: InputMaybe<OrderActions>;
  action_user?: InputMaybe<OrderActions>;
  bank_id: Scalars['Float']['input'];
  currency_fiat: Country;
  payment: PaymentInput;
  status: OrderStatus;
  trade_type: TradeType;
};

export type Order_CreteSellResponse = {
  __typename?: 'Order_CreteSellResponse';
  msg: Scalars['String']['output'];
};

export type Order_GetAllInput = {
  currency_crypto?: InputMaybe<Scalars['String']['input']>;
  currency_fiat?: InputMaybe<Country>;
  status?: InputMaybe<OrderStatus>;
  trade_type?: InputMaybe<TradeType>;
};

export type Order_GetOneInput = {
  id: Scalars['ID']['input'];
};

export type Order_MoveCryptoToEscrowInput = {
  action: OrderActions;
  amountCrypto: Scalars['Int']['input'];
  currencyCrypto: Scalars['String']['input'];
  id: Scalars['ID']['input'];
};

export type Order_Response = {
  __typename?: 'Order_Response';
  action_merchant?: Maybe<OrderActions>;
  action_user?: Maybe<OrderActions>;
  bank_id?: Maybe<Scalars['Float']['output']>;
  currency_fiat?: Maybe<Country>;
  id: Scalars['ID']['output'];
  status?: Maybe<OrderStatus>;
  trade_type?: Maybe<TradeType>;
};

export enum OtpPurpose {
  SignUp = 'SignUp',
  Verification = 'Verification'
}

export type PaymentInput = {
  amountCrypto: Scalars['Float']['input'];
  amountFiat: Scalars['Float']['input'];
  fiatCurrency: Country;
  isNative?: InputMaybe<Scalars['Boolean']['input']>;
  tokenAddress: Scalars['String']['input'];
  tokenChain: Scalars['String']['input'];
  transaction_pin: Scalars['String']['input'];
  user_uid: Scalars['String']['input'];
};

export type Query = {
  __typename?: 'Query';
  bankAccount_getAll: Array<BankAccount_Response>;
  bankList: Array<BankList_Response>;
  bank_verifyAccountNo: BankGetAccountName_Response;
  electricityBill_getProviders: Array<ElectricityBill_ProvidersResponse>;
  fundBetting_getPriceList: Array<BettingPricesResponse>;
  fundBetting_getProviders: Array<BettingProvidersResponse>;
  fxRate_GetAll: ExchangeRate_Response;
  orders_GetAll: Array<Order_Response>;
  orders_GetAllAsMerchant: Array<Order_Response>;
  orders_GetAllForAdmin: Array<Order_Response>;
  orders_GetOne: Order_Response;
  static_appInfo: Static_AppInfoResponse;
  static_getChains: Array<Static_GetChainsResponse>;
  static_getCountries: Array<Static_GetCountries>;
  static_getFundCollectors: Static_FundCollectorsResponse;
  static_getLinks: Array<Static_GetLinkResponse>;
  static_getTokens: Array<Static_GetTokenResponse>;
  static_miniApps: Array<Static_MiniAppsResponse>;
  static_secretQuestions: Array<Static_SecretQuestionsResponse>;
  transactions_getAll: Array<Transaction_GetResponse>;
  transactions_getOne: Transaction_GetResponse;
  tvBills_getBouquet: Array<TvBill_GetBouquetPackageResponse>;
  tvBills_getProviders: Array<TvBill_GetTvProvidersResponse>;
  user_get: UserDto;
  user_getAll: Array<UserDto>;
  utility_getTopUpOperators: Utilities_GetOperatorResponse;
  walletCrypto_getAll: Array<WalletCryptoResponse>;
  walletFiat_getAll: WalletFiat;
};


export type QueryBank_VerifyAccountNoArgs = {
  input: BankGetAccountName_Input;
};


export type QueryElectricityBill_GetProvidersArgs = {
  input: ElectricityBill_ProviderInput;
};


export type QueryFundBetting_GetPriceListArgs = {
  input: BettingProvidersInput;
};


export type QueryFundBetting_GetProvidersArgs = {
  input: BettingProvidersInput;
};


export type QueryOrders_GetAllArgs = {
  input: Order_GetAllInput;
};


export type QueryOrders_GetAllAsMerchantArgs = {
  input: Order_GetAllInput;
};


export type QueryOrders_GetAllForAdminArgs = {
  input: Order_GetAllInput;
};


export type QueryOrders_GetOneArgs = {
  input: Order_GetOneInput;
};


export type QueryTransactions_GetOneArgs = {
  input: Transaction_GetOneInput;
};


export type QueryTvBills_GetBouquetArgs = {
  input: TvBill_GetTvBouquetInput;
};


export type QueryTvBills_GetProvidersArgs = {
  input: TvBill_GetTvProvidersInput;
};


export type QueryUtility_GetTopUpOperatorsArgs = {
  input: Utilities_GetOperatorsInput;
};

export enum StaticLinkGroup {
  Docs = 'Docs',
  Learn = 'Learn',
  Social = 'Social'
}

export type Static_AppInfoResponse = {
  __typename?: 'Static_AppInfoResponse';
  androidAppUrl: Scalars['String']['output'];
  deployedBuild: Scalars['Float']['output'];
  enableAirtime: Scalars['Boolean']['output'];
  enableBetting: Scalars['Boolean']['output'];
  enableDataPlan: Scalars['Boolean']['output'];
  enableElectricityBillPayment: Scalars['Boolean']['output'];
  enableTVBillPayment: Scalars['Boolean']['output'];
  iosAppUrl: Scalars['String']['output'];
  minBuild: Scalars['Float']['output'];
  notificationsPageUrl: Scalars['String']['output'];
  selfKycUrl: Scalars['String']['output'];
  transactionsPageUrl: Scalars['String']['output'];
};

export type Static_FundCollectorsResponse = {
  __typename?: 'Static_FundCollectorsResponse';
  ElectricityBills: Scalars['String']['output'];
  FundBetting: Scalars['String']['output'];
  OffRamping: Scalars['String']['output'];
  TV_Bills: Scalars['String']['output'];
  TopUp: Scalars['String']['output'];
  WaterBills: Scalars['String']['output'];
};

export type Static_GetChainsResponse = {
  __typename?: 'Static_GetChainsResponse';
  chainId: Scalars['Float']['output'];
  explorerApiUrl: Scalars['String']['output'];
  explorerUrl: Scalars['String']['output'];
  logoUrl: Scalars['String']['output'];
  name: Scalars['String']['output'];
  rpcUrl: Scalars['String']['output'];
};

export type Static_GetCountries = {
  __typename?: 'Static_GetCountries';
  callingCodes: Scalars['String']['output'];
  continent: Scalars['String']['output'];
  currencyCode: Scalars['String']['output'];
  currencyName: Scalars['String']['output'];
  currencySymbol: Scalars['String']['output'];
  flag: Scalars['String']['output'];
  isoName: Country;
  name: Scalars['String']['output'];
};

export type Static_GetLinkResponse = {
  __typename?: 'Static_GetLinkResponse';
  category?: Maybe<Scalars['String']['output']>;
  desc?: Maybe<Scalars['String']['output']>;
  group: StaticLinkGroup;
  imgLink?: Maybe<Scalars['String']['output']>;
  title: Scalars['String']['output'];
  url: Scalars['String']['output'];
};

export type Static_GetTokenResponse = {
  __typename?: 'Static_GetTokenResponse';
  address: Scalars['String']['output'];
  chainId: Scalars['Float']['output'];
  chainName: Scalars['String']['output'];
  color: Scalars['String']['output'];
  decimals: Scalars['Float']['output'];
  isBuyable?: Maybe<Scalars['Boolean']['output']>;
  isPayable?: Maybe<Scalars['Boolean']['output']>;
  isSellable?: Maybe<Scalars['Boolean']['output']>;
  logoUrl: Scalars['String']['output'];
  name: Scalars['String']['output'];
  priceNGN: Scalars['Float']['output'];
  priceUSD: Scalars['Float']['output'];
  rpcUrl: Scalars['String']['output'];
  symbol: Scalars['String']['output'];
};

export type Static_MiniAppsResponse = {
  __typename?: 'Static_MiniAppsResponse';
  aboutInfo?: Maybe<Scalars['String']['output']>;
  description: Scalars['String']['output'];
  logo: Scalars['String']['output'];
  title: Scalars['String']['output'];
  url: Scalars['String']['output'];
};

export type Static_SecretQuestionsResponse = {
  __typename?: 'Static_SecretQuestionsResponse';
  text: Scalars['String']['output'];
};

export enum TradeType {
  Buy = 'BUY',
  Sell = 'SELL'
}

export enum TransactionCategory {
  Airtime = 'AIRTIME',
  BettingWallet = 'BETTING_WALLET',
  DataBundle = 'DATA_BUNDLE',
  ElectricityBill = 'ELECTRICITY_BILL',
  ExpressExchange = 'EXPRESS_EXCHANGE',
  GiftCard = 'GIFT_CARD',
  InternetBill = 'INTERNET_BILL',
  OffRamping = 'OFF_RAMPING',
  OnRamping = 'ON_RAMPING',
  P2PExchange = 'P2P_EXCHANGE',
  TvBill = 'TV_BILL',
  WaterBill = 'WATER_BILL'
}

export enum TransactionStatus {
  Completed = 'COMPLETED',
  Pending = 'PENDING'
}

export type Transaction_GetOneInput = {
  id: Scalars['Int']['input'];
};

export type Transaction_GetResponse = {
  __typename?: 'Transaction_GetResponse';
  amount: Scalars['Float']['output'];
  category: TransactionCategory;
  id: Scalars['ID']['output'];
  mode: TransactionsMode;
  note: Scalars['String']['output'];
  status: TransactionStatus;
  transaction_hash?: Maybe<Scalars['String']['output']>;
};

export enum TransactionsMode {
  Credit = 'CREDIT',
  Debit = 'DEBIT'
}

export type TvBill_GetBouquetPackageResponse = {
  __typename?: 'TvBill_GetBouquetPackageResponse';
  code: Scalars['String']['output'];
  description: Scalars['String']['output'];
  price: Scalars['String']['output'];
};

export type TvBill_GetTvBouquetInput = {
  countryCode: Country;
  service: Scalars['String']['input'];
};

export type TvBill_GetTvProvidersInput = {
  countryCode: Country;
};

export type TvBill_GetTvProvidersResponse = {
  __typename?: 'TvBill_GetTVProvidersResponse';
  category: Scalars['String']['output'];
  logo: Scalars['String']['output'];
  name: Scalars['String']['output'];
  slug: Scalars['String']['output'];
};

export type TvBill_PaymentInput = {
  amount: Scalars['String']['input'];
  countryCode: Country;
  customerName: Scalars['String']['input'];
  packageCode: Scalars['String']['input'];
  payment: PaymentInput;
  reference: Scalars['String']['input'];
  service: Scalars['String']['input'];
  smartCardNumber: Scalars['String']['input'];
};

export type TvBill_PaymentResponse = {
  __typename?: 'TvBill_PaymentResponse';
  amount: Scalars['Int']['output'];
  biller: Scalars['String']['output'];
  commission: Scalars['Int']['output'];
  customerId: Scalars['String']['output'];
  transactionDate: Scalars['String']['output'];
  transactionId: Scalars['String']['output'];
  unit: Scalars['String']['output'];
};

export type TvBill_ValidateAccountInput = {
  service: Scalars['String']['input'];
  smartCardNumber: Scalars['String']['input'];
};

export type TvBill_ValidateAccountResponse = {
  __typename?: 'TvBill_ValidateAccountResponse';
  customerName: Scalars['String']['output'];
  service: Scalars['String']['output'];
  smartCardNumber: Scalars['String']['output'];
};

export type UserDto = {
  __typename?: 'UserDto';
  bvn?: Maybe<Scalars['String']['output']>;
  bvn_status?: Maybe<CredentialsStatus>;
  country_code?: Maybe<Country>;
  dob?: Maybe<Scalars['String']['output']>;
  dob_status?: Maybe<CredentialsStatus>;
  email?: Maybe<Scalars['String']['output']>;
  firstname?: Maybe<Scalars['String']['output']>;
  home_address?: Maybe<Scalars['String']['output']>;
  id: Scalars['ID']['output'];
  lastname?: Maybe<Scalars['String']['output']>;
  middlename?: Maybe<Scalars['String']['output']>;
  nin?: Maybe<Scalars['String']['output']>;
  nin_status?: Maybe<CredentialsStatus>;
  phone?: Maybe<Scalars['String']['output']>;
  role?: Maybe<Scalars['String']['output']>;
  state?: Maybe<Scalars['String']['output']>;
  telegram_id?: Maybe<Scalars['String']['output']>;
};

export type Utilities_GetOperatorResponse = {
  __typename?: 'Utilities_GetOperatorResponse';
  airtime: Array<IAirtimeOperator>;
  dataBundles: Array<IOperator>;
  dataPlan: Array<IOperator>;
};

export type Utilities_GetOperatorsInput = {
  countryCode: Country;
};

export type Utilities_PurchaseAirtimeInput = {
  amount: Scalars['Float']['input'];
  countryCode: Country;
  operatorId: Scalars['Int']['input'];
  payment: PaymentInput;
  phoneNo: Scalars['String']['input'];
};

export type Utilities_PurchaseDataBundleInput = {
  amount: Scalars['Float']['input'];
  countryCode: Country;
  operatorId: Scalars['Int']['input'];
  payment: PaymentInput;
  phoneNo: Scalars['String']['input'];
};

export type Utilities_PurchaseTopUpResponse = {
  __typename?: 'Utilities_PurchaseTopUpResponse';
  subtitle: Scalars['String']['output'];
  title: Scalars['String']['output'];
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

export type Wallet_CreateInput = {
  answer: Scalars['String']['input'];
  pin: Scalars['String']['input'];
  question: Scalars['String']['input'];
  user_uid: Scalars['String']['input'];
};

export type Wallet_CreateResponse = {
  __typename?: 'Wallet_CreateResponse';
  message: Scalars['String']['output'];
};

export type Auth_FirebaseLoginMutationVariables = Exact<{
  input: Auth_FirebaseLoginInput;
}>;


export type Auth_FirebaseLoginMutation = { __typename?: 'Mutation', auth_firebaseLogin: { __typename?: 'Auth_FirebaseLoginResponse', firstname?: string | null, lastname?: string | null, middlename?: string | null, email?: string | null, token?: string | null } };

export type BankAccount_DeleteMutationVariables = Exact<{
  input: BankAccount_DeleteInput;
}>;


export type BankAccount_DeleteMutation = { __typename?: 'Mutation', bankAccount_delete: { __typename?: 'BankAccount_DeleteResponse', message: string } };

export type BankAccount_CreateMutationVariables = Exact<{
  input: BankAccount_CreateInput;
}>;


export type BankAccount_CreateMutation = { __typename?: 'Mutation', bankAccount_create: { __typename?: 'BankAccount_Response', id: number, account_no: string, account_name: string, bank_name: string } };

export type BankAccount_GetAllQueryVariables = Exact<{ [key: string]: never; }>;


export type BankAccount_GetAllQuery = { __typename?: 'Query', bankAccount_getAll: Array<{ __typename?: 'BankAccount_Response', id: number, account_name: string, account_no: string, bank_name: string, bankCode?: string | null }> };

export type BankListQueryVariables = Exact<{ [key: string]: never; }>;


export type BankListQuery = { __typename?: 'Query', bankList: Array<{ __typename?: 'BankList_Response', bankCode?: string | null, bankName: string }> };

export type Bank_VerifyAccountNoQueryVariables = Exact<{
  input: BankGetAccountName_Input;
}>;


export type Bank_VerifyAccountNoQuery = { __typename?: 'Query', bank_verifyAccountNo: { __typename?: 'BankGetAccountName_Response', account_name: string, account_number: string } };

export type FxRate_GetAllQueryVariables = Exact<{ [key: string]: never; }>;


export type FxRate_GetAllQuery = { __typename?: 'Query', fxRate_GetAll: { __typename?: 'ExchangeRate_Response', GH: number, NG: number, KE: number, UG: number, MW: number, TZ: number, ZA: number, USD: number, EUR: number } };

export type Kyc_AddAddressInfoMutationVariables = Exact<{
  input: Kyc_AddAddressInfoInput;
}>;


export type Kyc_AddAddressInfoMutation = { __typename?: 'Mutation', kyc_addAddressInfo: { __typename?: 'Kyc_Response', message: string } };

export type Kyc_AddAddressProofMutationVariables = Exact<{
  input: Kyc_AddAddressProofInput;
}>;


export type Kyc_AddAddressProofMutation = { __typename?: 'Mutation', kyc_addAddressProof: { __typename?: 'Kyc_Response', message: string } };

export type Kyc_AddBvnMutationVariables = Exact<{
  input: Kyc_AddBvnInput;
}>;


export type Kyc_AddBvnMutation = { __typename?: 'Mutation', kyc_addBvn: { __typename?: 'Kyc_AddBvnResponse', message: string } };

export type Kyc_AddDobMutationVariables = Exact<{
  input: Kyc_AddDobInput;
}>;


export type Kyc_AddDobMutation = { __typename?: 'Mutation', kyc_addDob: { __typename?: 'Kyc_Response', message: string } };

export type Kyc_AddNamesMutationVariables = Exact<{
  input: Kyc_AddNamesInput;
}>;


export type Kyc_AddNamesMutation = { __typename?: 'Mutation', kyc_addNames: { __typename?: 'Kyc_Response', message: string } };

export type Kyc_AddNinMutationVariables = Exact<{
  input: Kyc_AddNinInput;
}>;


export type Kyc_AddNinMutation = { __typename?: 'Mutation', kyc_addNin: { __typename?: 'Kyc_AddNinResponse', message?: string | null } };

export type Kyc_CreateTransactionPinMutationVariables = Exact<{
  input: Kyc_CreateTransactionPinInput;
}>;


export type Kyc_CreateTransactionPinMutation = { __typename?: 'Mutation', kyc_createTransactionPin: { __typename?: 'Kyc_Response', message: string } };

export type Kyc_SendPhoneOtpMutationVariables = Exact<{
  input: Kyc_SendPhoneOtpInput;
}>;


export type Kyc_SendPhoneOtpMutation = { __typename?: 'Mutation', kyc_sendPhoneOtp: { __typename?: 'Kyc_SendOtpResponse', message: string, otpToken: string } };

export type Kyc_VerifyPhoneOtpAndSubmitCredentialsMutationVariables = Exact<{
  input: Kyc_VerifyPhoneOtpAndSubmitCredentialsInput;
}>;


export type Kyc_VerifyPhoneOtpAndSubmitCredentialsMutation = { __typename?: 'Mutation', kyc_verifyPhoneOtpAndSubmitCredentials: { __typename?: 'Kyc_Response', message: string } };

export type Onchain_ClaimMutationVariables = Exact<{
  input: Onchain_ClaimRewardsInput;
}>;


export type Onchain_ClaimMutation = { __typename?: 'Mutation', onchain_claim: { __typename?: 'Onchain_ClaimRewardsResponse', message: string } };

export type Orders_CreateSellMutationVariables = Exact<{
  input: Order_CreteSellInput;
}>;


export type Orders_CreateSellMutation = { __typename?: 'Mutation', orders_CreateSell: { __typename?: 'Order_CreteSellResponse', msg: string } };

export type Static_GetTokensQueryVariables = Exact<{ [key: string]: never; }>;


export type Static_GetTokensQuery = { __typename?: 'Query', static_getTokens: Array<{ __typename?: 'Static_GetTokenResponse', name: string, address: string, decimals: number, isBuyable?: boolean | null, isPayable?: boolean | null, symbol: string, logoUrl: string, chainId: number, priceUSD: number, priceNGN: number, rpcUrl: string, chainName: string }> };

export type Static_GetLinksQueryVariables = Exact<{ [key: string]: never; }>;


export type Static_GetLinksQuery = { __typename?: 'Query', static_getLinks: Array<{ __typename?: 'Static_GetLinkResponse', title: string, desc?: string | null, imgLink?: string | null, url: string, category?: string | null, group: StaticLinkGroup }> };

export type Static_GetCountryQueryVariables = Exact<{ [key: string]: never; }>;


export type Static_GetCountryQuery = { __typename?: 'Query', static_getCountries: Array<{ __typename?: 'Static_GetCountries', name: string, isoName: Country, callingCodes: string, continent: string, currencyCode: string, currencyName: string, currencySymbol: string, flag: string }> };

export type Static_GetChainQueryVariables = Exact<{ [key: string]: never; }>;


export type Static_GetChainQuery = { __typename?: 'Query', static_getChains: Array<{ __typename?: 'Static_GetChainsResponse', name: string, rpcUrl: string, chainId: number, explorerUrl: string, explorerApiUrl: string, logoUrl: string }> };

export type Static_GetFundCollectorsQueryVariables = Exact<{ [key: string]: never; }>;


export type Static_GetFundCollectorsQuery = { __typename?: 'Query', static_getFundCollectors: { __typename?: 'Static_FundCollectorsResponse', TopUp: string, ElectricityBills: string, FundBetting: string, OffRamping: string, TV_Bills: string, WaterBills: string } };

export type Static_AppInfoQueryVariables = Exact<{ [key: string]: never; }>;


export type Static_AppInfoQuery = { __typename?: 'Query', static_appInfo: { __typename?: 'Static_AppInfoResponse', androidAppUrl: string, iosAppUrl: string, minBuild: number, deployedBuild: number, enableAirtime: boolean, enableBetting: boolean, enableDataPlan: boolean, enableElectricityBillPayment: boolean, enableTVBillPayment: boolean, selfKycUrl: string, transactionsPageUrl: string, notificationsPageUrl: string } };

export type Static_SecretQuestionsQueryVariables = Exact<{ [key: string]: never; }>;


export type Static_SecretQuestionsQuery = { __typename?: 'Query', static_secretQuestions: Array<{ __typename?: 'Static_SecretQuestionsResponse', text: string }> };

export type Static_MiniAppsQueryVariables = Exact<{ [key: string]: never; }>;


export type Static_MiniAppsQuery = { __typename?: 'Query', static_miniApps: Array<{ __typename?: 'Static_MiniAppsResponse', title: string, description: string, logo: string, url: string, aboutInfo?: string | null }> };

export type Utility_GetTopUpOperatorsQueryVariables = Exact<{
  input: Utilities_GetOperatorsInput;
}>;


export type Utility_GetTopUpOperatorsQuery = { __typename?: 'Query', utility_getTopUpOperators: { __typename?: 'Utilities_GetOperatorResponse', airtime: Array<{ __typename?: 'IAirtimeOperator', name: string, suggestedAmounts?: Array<number> | null, logo: string, maxAmount?: number | null, minAmount?: number | null, operatorId: number }>, dataPlan: Array<{ __typename?: 'IOperator', name: string, logo: string, operatorId: number, plans?: Array<{ __typename?: 'IDataPlan', amount: number, desc: string }> | null }>, dataBundles: Array<{ __typename?: 'IOperator', name: string, logo: string, operatorId: number, plans?: Array<{ __typename?: 'IDataPlan', amount: number, desc: string }> | null }> } };

export type Transactions_GetAllQueryVariables = Exact<{ [key: string]: never; }>;


export type Transactions_GetAllQuery = { __typename?: 'Query', transactions_getAll: Array<{ __typename?: 'Transaction_GetResponse', amount: number, category: TransactionCategory, mode: TransactionsMode, note: string, transaction_hash?: string | null, status: TransactionStatus }> };

export type User_GetAllQueryVariables = Exact<{ [key: string]: never; }>;


export type User_GetAllQuery = { __typename?: 'Query', user_getAll: Array<{ __typename?: 'UserDto', telegram_id?: string | null, id: string, country_code?: Country | null, phone?: string | null, firstname?: string | null, lastname?: string | null, middlename?: string | null, email?: string | null }> };

export type User_GetQueryVariables = Exact<{ [key: string]: never; }>;


export type User_GetQuery = { __typename?: 'Query', user_get: { __typename?: 'UserDto', firstname?: string | null, lastname?: string | null, middlename?: string | null, email?: string | null, country_code?: Country | null, phone?: string | null, bvn?: string | null, bvn_status?: CredentialsStatus | null, nin?: string | null, nin_status?: CredentialsStatus | null, state?: string | null, dob?: string | null, dob_status?: CredentialsStatus | null, home_address?: string | null } };

export type Utility_PurchaseAirtimeMutationVariables = Exact<{
  input: Utilities_PurchaseAirtimeInput;
}>;


export type Utility_PurchaseAirtimeMutation = { __typename?: 'Mutation', utility_purchaseAirtime: { __typename?: 'Utilities_PurchaseTopUpResponse', title: string, subtitle: string } };

export type Utility_PurchaseDataBundleMutationVariables = Exact<{
  input: Utilities_PurchaseDataBundleInput;
}>;


export type Utility_PurchaseDataBundleMutation = { __typename?: 'Mutation', utility_purchaseDataBundle: { __typename?: 'Utilities_PurchaseTopUpResponse', title: string, subtitle: string } };

export type ElectricityBill_GetProvidersQueryVariables = Exact<{
  input: ElectricityBill_ProviderInput;
}>;


export type ElectricityBill_GetProvidersQuery = { __typename?: 'Query', electricityBill_getProviders: Array<{ __typename?: 'ElectricityBill_ProvidersResponse', name: string, logo: string, category: string }> };

export type ElectricityBill_VerifyAccountMutationVariables = Exact<{
  input: ElectricityBill_ValidateAccountInput;
}>;


export type ElectricityBill_VerifyAccountMutation = { __typename?: 'Mutation', electricityBill_verifyAccount: { __typename?: 'ElectricityBill_ValidateAccountResponse', customerAddress: string, customerName: string, meterNumber: string, meterType: string, minimuVendAmount: number } };

export type ElectricityBill_MakePaymentMutationVariables = Exact<{
  input: ElectricityBill_PaymentInput;
}>;


export type ElectricityBill_MakePaymentMutation = { __typename?: 'Mutation', electricityBill_makePayment: { __typename?: 'ElectricityBill_PaymentResponse', amount: string, biller: string, bonusToken: string, chargedAmount: number, commission: number, customerId: string, transactionDate: string, unit: string } };

export type TvBills_GetProvidersQueryVariables = Exact<{
  input: TvBill_GetTvProvidersInput;
}>;


export type TvBills_GetProvidersQuery = { __typename?: 'Query', tvBills_getProviders: Array<{ __typename?: 'TvBill_GetTVProvidersResponse', logo: string, category: string, name: string, slug: string }> };

export type TvBills_GetBouquetQueryVariables = Exact<{
  input: TvBill_GetTvBouquetInput;
}>;


export type TvBills_GetBouquetQuery = { __typename?: 'Query', tvBills_getBouquet: Array<{ __typename?: 'TvBill_GetBouquetPackageResponse', code: string, description: string, price: string }> };

export type TvBills_ValidateAccountMutationVariables = Exact<{
  input: TvBill_ValidateAccountInput;
}>;


export type TvBills_ValidateAccountMutation = { __typename?: 'Mutation', tvBills_validateAccount: { __typename?: 'TvBill_ValidateAccountResponse', customerName: string, service: string, smartCardNumber: string } };

export type TvBills_MakePaymentMutationVariables = Exact<{
  input: TvBill_PaymentInput;
}>;


export type TvBills_MakePaymentMutation = { __typename?: 'Mutation', tvBills_makePayment: { __typename?: 'TvBill_PaymentResponse', amount: number, biller: string, commission: number, customerId: string, transactionId: string, transactionDate: string } };

export type FundBetting_GetProvidersQueryVariables = Exact<{
  input: BettingProvidersInput;
}>;


export type FundBetting_GetProvidersQuery = { __typename?: 'Query', fundBetting_getProviders: Array<{ __typename?: 'BettingProvidersResponse', logo: string, name: string }>, fundBetting_getPriceList: Array<{ __typename?: 'BettingPricesResponse', amount: number }> };

export type FundBetting_MakePaymentMutationVariables = Exact<{
  input: BettingPaymentInput;
}>;


export type FundBetting_MakePaymentMutation = { __typename?: 'Mutation', fundBetting_makePayment: { __typename?: 'BettingPaymentResponse', amount: number, customer_name: string, customer_username: string, customer_phone_number: string, customer_email_address: string, order_id: number, service_name: string, request_id: string } };

export type WalletCrypto_CreateMutationVariables = Exact<{ [key: string]: never; }>;


export type WalletCrypto_CreateMutation = { __typename?: 'Mutation', walletCrypto_create: Array<{ __typename?: 'WalletCryptoResponse', address: string, chainType: ChainType, id: number, wallet_id?: string | null }> };

export type WalletCrypto_GetAllQueryVariables = Exact<{ [key: string]: never; }>;


export type WalletCrypto_GetAllQuery = { __typename?: 'Query', walletCrypto_getAll: Array<{ __typename?: 'WalletCryptoResponse', address: string, chainType: ChainType, id: number, wallet_id?: string | null }> };

export type WalletCrypto_MobileCreateMutationVariables = Exact<{
  input: Wallet_CreateInput;
}>;


export type WalletCrypto_MobileCreateMutation = { __typename?: 'Mutation', walletCrypto_mobileCreate: { __typename?: 'Wallet_CreateResponse', message: string } };


export const Auth_FirebaseLoginDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"Auth_firebaseLogin"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Auth_FirebaseLoginInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"auth_firebaseLogin"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"firstname"}},{"kind":"Field","name":{"kind":"Name","value":"lastname"}},{"kind":"Field","name":{"kind":"Name","value":"middlename"}},{"kind":"Field","name":{"kind":"Name","value":"email"}},{"kind":"Field","name":{"kind":"Name","value":"token"}}]}}]}}]} as unknown as DocumentNode<Auth_FirebaseLoginMutation, Auth_FirebaseLoginMutationVariables>;
export const BankAccount_DeleteDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"BankAccount_delete"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"BankAccount_DeleteInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"bankAccount_delete"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}}]}}]}}]} as unknown as DocumentNode<BankAccount_DeleteMutation, BankAccount_DeleteMutationVariables>;
export const BankAccount_CreateDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"BankAccount_create"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"BankAccount_CreateInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"bankAccount_create"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"id"}},{"kind":"Field","name":{"kind":"Name","value":"account_no"}},{"kind":"Field","name":{"kind":"Name","value":"account_name"}},{"kind":"Field","name":{"kind":"Name","value":"bank_name"}}]}}]}}]} as unknown as DocumentNode<BankAccount_CreateMutation, BankAccount_CreateMutationVariables>;
export const BankAccount_GetAllDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"BankAccount_getAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"bankAccount_getAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"id"}},{"kind":"Field","name":{"kind":"Name","value":"account_name"}},{"kind":"Field","name":{"kind":"Name","value":"account_no"}},{"kind":"Field","name":{"kind":"Name","value":"bank_name"}},{"kind":"Field","name":{"kind":"Name","value":"bankCode"}}]}}]}}]} as unknown as DocumentNode<BankAccount_GetAllQuery, BankAccount_GetAllQueryVariables>;
export const BankListDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"BankList"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"bankList"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"bankCode"}},{"kind":"Field","name":{"kind":"Name","value":"bankName"}}]}}]}}]} as unknown as DocumentNode<BankListQuery, BankListQueryVariables>;
export const Bank_VerifyAccountNoDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"Bank_verifyAccountNo"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"BankGetAccountName_Input"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"bank_verifyAccountNo"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"account_name"}},{"kind":"Field","name":{"kind":"Name","value":"account_number"}}]}}]}}]} as unknown as DocumentNode<Bank_VerifyAccountNoQuery, Bank_VerifyAccountNoQueryVariables>;
export const FxRate_GetAllDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"FxRate_GetAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"fxRate_GetAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"GH"}},{"kind":"Field","name":{"kind":"Name","value":"NG"}},{"kind":"Field","name":{"kind":"Name","value":"KE"}},{"kind":"Field","name":{"kind":"Name","value":"UG"}},{"kind":"Field","name":{"kind":"Name","value":"MW"}},{"kind":"Field","name":{"kind":"Name","value":"TZ"}},{"kind":"Field","name":{"kind":"Name","value":"ZA"}},{"kind":"Field","name":{"kind":"Name","value":"USD"}},{"kind":"Field","name":{"kind":"Name","value":"EUR"}}]}}]}}]} as unknown as DocumentNode<FxRate_GetAllQuery, FxRate_GetAllQueryVariables>;
export const Kyc_AddAddressInfoDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"Kyc_addAddressInfo"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Kyc_AddAddressInfoInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"kyc_addAddressInfo"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}}]}}]}}]} as unknown as DocumentNode<Kyc_AddAddressInfoMutation, Kyc_AddAddressInfoMutationVariables>;
export const Kyc_AddAddressProofDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"kyc_addAddressProof"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Kyc_AddAddressProofInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"kyc_addAddressProof"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}}]}}]}}]} as unknown as DocumentNode<Kyc_AddAddressProofMutation, Kyc_AddAddressProofMutationVariables>;
export const Kyc_AddBvnDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"kyc_addBvn"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Kyc_AddBvnInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"kyc_addBvn"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}}]}}]}}]} as unknown as DocumentNode<Kyc_AddBvnMutation, Kyc_AddBvnMutationVariables>;
export const Kyc_AddDobDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"kyc_addDob"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Kyc_AddDobInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"kyc_addDob"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}}]}}]}}]} as unknown as DocumentNode<Kyc_AddDobMutation, Kyc_AddDobMutationVariables>;
export const Kyc_AddNamesDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"kyc_addNames"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Kyc_AddNamesInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"kyc_addNames"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}}]}}]}}]} as unknown as DocumentNode<Kyc_AddNamesMutation, Kyc_AddNamesMutationVariables>;
export const Kyc_AddNinDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"kyc_addNin"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Kyc_AddNinInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"kyc_addNin"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}}]}}]}}]} as unknown as DocumentNode<Kyc_AddNinMutation, Kyc_AddNinMutationVariables>;
export const Kyc_CreateTransactionPinDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"kyc_createTransactionPin"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Kyc_CreateTransactionPinInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"kyc_createTransactionPin"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}}]}}]}}]} as unknown as DocumentNode<Kyc_CreateTransactionPinMutation, Kyc_CreateTransactionPinMutationVariables>;
export const Kyc_SendPhoneOtpDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"kyc_sendPhoneOtp"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Kyc_SendPhoneOtpInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"kyc_sendPhoneOtp"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}},{"kind":"Field","name":{"kind":"Name","value":"otpToken"}}]}}]}}]} as unknown as DocumentNode<Kyc_SendPhoneOtpMutation, Kyc_SendPhoneOtpMutationVariables>;
export const Kyc_VerifyPhoneOtpAndSubmitCredentialsDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"kyc_verifyPhoneOtpAndSubmitCredentials"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Kyc_verifyPhoneOtpAndSubmitCredentialsInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"kyc_verifyPhoneOtpAndSubmitCredentials"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}}]}}]}}]} as unknown as DocumentNode<Kyc_VerifyPhoneOtpAndSubmitCredentialsMutation, Kyc_VerifyPhoneOtpAndSubmitCredentialsMutationVariables>;
export const Onchain_ClaimDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"Onchain_claim"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Onchain_ClaimRewardsInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"onchain_claim"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}}]}}]}}]} as unknown as DocumentNode<Onchain_ClaimMutation, Onchain_ClaimMutationVariables>;
export const Orders_CreateSellDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"Orders_CreateSell"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Order_CreteSellInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"orders_CreateSell"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"msg"}}]}}]}}]} as unknown as DocumentNode<Orders_CreateSellMutation, Orders_CreateSellMutationVariables>;
export const Static_GetTokensDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"static_getTokens"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"static_getTokens"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"name"}},{"kind":"Field","name":{"kind":"Name","value":"address"}},{"kind":"Field","name":{"kind":"Name","value":"decimals"}},{"kind":"Field","name":{"kind":"Name","value":"isBuyable"}},{"kind":"Field","name":{"kind":"Name","value":"isPayable"}},{"kind":"Field","name":{"kind":"Name","value":"symbol"}},{"kind":"Field","name":{"kind":"Name","value":"logoUrl"}},{"kind":"Field","name":{"kind":"Name","value":"chainId"}},{"kind":"Field","name":{"kind":"Name","value":"priceUSD"}},{"kind":"Field","name":{"kind":"Name","value":"priceNGN"}},{"kind":"Field","name":{"kind":"Name","value":"rpcUrl"}},{"kind":"Field","name":{"kind":"Name","value":"chainName"}}]}}]}}]} as unknown as DocumentNode<Static_GetTokensQuery, Static_GetTokensQueryVariables>;
export const Static_GetLinksDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"static_getLinks"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"static_getLinks"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"title"}},{"kind":"Field","name":{"kind":"Name","value":"desc"}},{"kind":"Field","name":{"kind":"Name","value":"imgLink"}},{"kind":"Field","name":{"kind":"Name","value":"url"}},{"kind":"Field","name":{"kind":"Name","value":"category"}},{"kind":"Field","name":{"kind":"Name","value":"group"}}]}}]}}]} as unknown as DocumentNode<Static_GetLinksQuery, Static_GetLinksQueryVariables>;
export const Static_GetCountryDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"static_getCountry"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"static_getCountries"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"name"}},{"kind":"Field","name":{"kind":"Name","value":"isoName"}},{"kind":"Field","name":{"kind":"Name","value":"callingCodes"}},{"kind":"Field","name":{"kind":"Name","value":"continent"}},{"kind":"Field","name":{"kind":"Name","value":"currencyCode"}},{"kind":"Field","name":{"kind":"Name","value":"currencyName"}},{"kind":"Field","name":{"kind":"Name","value":"currencySymbol"}},{"kind":"Field","name":{"kind":"Name","value":"flag"}}]}}]}}]} as unknown as DocumentNode<Static_GetCountryQuery, Static_GetCountryQueryVariables>;
export const Static_GetChainDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"static_getChain"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"static_getChains"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"name"}},{"kind":"Field","name":{"kind":"Name","value":"rpcUrl"}},{"kind":"Field","name":{"kind":"Name","value":"chainId"}},{"kind":"Field","name":{"kind":"Name","value":"explorerUrl"}},{"kind":"Field","name":{"kind":"Name","value":"explorerApiUrl"}},{"kind":"Field","name":{"kind":"Name","value":"logoUrl"}}]}}]}}]} as unknown as DocumentNode<Static_GetChainQuery, Static_GetChainQueryVariables>;
export const Static_GetFundCollectorsDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"static_getFundCollectors"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"static_getFundCollectors"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"TopUp"}},{"kind":"Field","name":{"kind":"Name","value":"ElectricityBills"}},{"kind":"Field","name":{"kind":"Name","value":"FundBetting"}},{"kind":"Field","name":{"kind":"Name","value":"OffRamping"}},{"kind":"Field","name":{"kind":"Name","value":"TV_Bills"}},{"kind":"Field","name":{"kind":"Name","value":"WaterBills"}}]}}]}}]} as unknown as DocumentNode<Static_GetFundCollectorsQuery, Static_GetFundCollectorsQueryVariables>;
export const Static_AppInfoDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"static_appInfo"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"static_appInfo"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"androidAppUrl"}},{"kind":"Field","name":{"kind":"Name","value":"iosAppUrl"}},{"kind":"Field","name":{"kind":"Name","value":"minBuild"}},{"kind":"Field","name":{"kind":"Name","value":"deployedBuild"}},{"kind":"Field","name":{"kind":"Name","value":"enableAirtime"}},{"kind":"Field","name":{"kind":"Name","value":"enableBetting"}},{"kind":"Field","name":{"kind":"Name","value":"enableDataPlan"}},{"kind":"Field","name":{"kind":"Name","value":"enableElectricityBillPayment"}},{"kind":"Field","name":{"kind":"Name","value":"enableTVBillPayment"}},{"kind":"Field","name":{"kind":"Name","value":"selfKycUrl"}},{"kind":"Field","name":{"kind":"Name","value":"transactionsPageUrl"}},{"kind":"Field","name":{"kind":"Name","value":"notificationsPageUrl"}}]}}]}}]} as unknown as DocumentNode<Static_AppInfoQuery, Static_AppInfoQueryVariables>;
export const Static_SecretQuestionsDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"static_secretQuestions"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"static_secretQuestions"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"text"}}]}}]}}]} as unknown as DocumentNode<Static_SecretQuestionsQuery, Static_SecretQuestionsQueryVariables>;
export const Static_MiniAppsDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"static_miniApps"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"static_miniApps"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"title"}},{"kind":"Field","name":{"kind":"Name","value":"description"}},{"kind":"Field","name":{"kind":"Name","value":"logo"}},{"kind":"Field","name":{"kind":"Name","value":"url"}},{"kind":"Field","name":{"kind":"Name","value":"aboutInfo"}}]}}]}}]} as unknown as DocumentNode<Static_MiniAppsQuery, Static_MiniAppsQueryVariables>;
export const Utility_GetTopUpOperatorsDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"utility_getTopUpOperators"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Utilities_GetOperatorsInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"utility_getTopUpOperators"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"airtime"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"name"}},{"kind":"Field","name":{"kind":"Name","value":"suggestedAmounts"}},{"kind":"Field","name":{"kind":"Name","value":"logo"}},{"kind":"Field","name":{"kind":"Name","value":"maxAmount"}},{"kind":"Field","name":{"kind":"Name","value":"minAmount"}},{"kind":"Field","name":{"kind":"Name","value":"operatorId"}}]}},{"kind":"Field","name":{"kind":"Name","value":"dataPlan"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"name"}},{"kind":"Field","name":{"kind":"Name","value":"logo"}},{"kind":"Field","name":{"kind":"Name","value":"operatorId"}},{"kind":"Field","name":{"kind":"Name","value":"plans"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"amount"}},{"kind":"Field","name":{"kind":"Name","value":"desc"}}]}}]}},{"kind":"Field","name":{"kind":"Name","value":"dataBundles"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"name"}},{"kind":"Field","name":{"kind":"Name","value":"logo"}},{"kind":"Field","name":{"kind":"Name","value":"operatorId"}},{"kind":"Field","name":{"kind":"Name","value":"plans"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"amount"}},{"kind":"Field","name":{"kind":"Name","value":"desc"}}]}}]}}]}}]}}]} as unknown as DocumentNode<Utility_GetTopUpOperatorsQuery, Utility_GetTopUpOperatorsQueryVariables>;
export const Transactions_GetAllDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"Transactions_getAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"transactions_getAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"amount"}},{"kind":"Field","name":{"kind":"Name","value":"category"}},{"kind":"Field","name":{"kind":"Name","value":"mode"}},{"kind":"Field","name":{"kind":"Name","value":"note"}},{"kind":"Field","name":{"kind":"Name","value":"transaction_hash"}},{"kind":"Field","name":{"kind":"Name","value":"status"}}]}}]}}]} as unknown as DocumentNode<Transactions_GetAllQuery, Transactions_GetAllQueryVariables>;
export const User_GetAllDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"User_getAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"user_getAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"telegram_id"}},{"kind":"Field","name":{"kind":"Name","value":"id"}},{"kind":"Field","name":{"kind":"Name","value":"country_code"}},{"kind":"Field","name":{"kind":"Name","value":"phone"}},{"kind":"Field","name":{"kind":"Name","value":"firstname"}},{"kind":"Field","name":{"kind":"Name","value":"lastname"}},{"kind":"Field","name":{"kind":"Name","value":"middlename"}},{"kind":"Field","name":{"kind":"Name","value":"email"}}]}}]}}]} as unknown as DocumentNode<User_GetAllQuery, User_GetAllQueryVariables>;
export const User_GetDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"user_get"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"user_get"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"firstname"}},{"kind":"Field","name":{"kind":"Name","value":"lastname"}},{"kind":"Field","name":{"kind":"Name","value":"middlename"}},{"kind":"Field","name":{"kind":"Name","value":"email"}},{"kind":"Field","name":{"kind":"Name","value":"country_code"}},{"kind":"Field","name":{"kind":"Name","value":"phone"}},{"kind":"Field","name":{"kind":"Name","value":"bvn"}},{"kind":"Field","name":{"kind":"Name","value":"bvn_status"}},{"kind":"Field","name":{"kind":"Name","value":"nin"}},{"kind":"Field","name":{"kind":"Name","value":"nin_status"}},{"kind":"Field","name":{"kind":"Name","value":"state"}},{"kind":"Field","name":{"kind":"Name","value":"dob"}},{"kind":"Field","name":{"kind":"Name","value":"dob_status"}},{"kind":"Field","name":{"kind":"Name","value":"home_address"}}]}}]}}]} as unknown as DocumentNode<User_GetQuery, User_GetQueryVariables>;
export const Utility_PurchaseAirtimeDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"Utility_purchaseAirtime"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Utilities_PurchaseAirtimeInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"utility_purchaseAirtime"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"title"}},{"kind":"Field","name":{"kind":"Name","value":"subtitle"}}]}}]}}]} as unknown as DocumentNode<Utility_PurchaseAirtimeMutation, Utility_PurchaseAirtimeMutationVariables>;
export const Utility_PurchaseDataBundleDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"Utility_purchaseDataBundle"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Utilities_PurchaseDataBundleInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"utility_purchaseDataBundle"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"title"}},{"kind":"Field","name":{"kind":"Name","value":"subtitle"}}]}}]}}]} as unknown as DocumentNode<Utility_PurchaseDataBundleMutation, Utility_PurchaseDataBundleMutationVariables>;
export const ElectricityBill_GetProvidersDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"ElectricityBill_getProviders"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"ElectricityBill_ProviderInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"electricityBill_getProviders"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"name"}},{"kind":"Field","name":{"kind":"Name","value":"logo"}},{"kind":"Field","name":{"kind":"Name","value":"category"}}]}}]}}]} as unknown as DocumentNode<ElectricityBill_GetProvidersQuery, ElectricityBill_GetProvidersQueryVariables>;
export const ElectricityBill_VerifyAccountDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"ElectricityBill_verifyAccount"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"ElectricityBill_ValidateAccountInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"electricityBill_verifyAccount"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"customerAddress"}},{"kind":"Field","name":{"kind":"Name","value":"customerName"}},{"kind":"Field","name":{"kind":"Name","value":"meterNumber"}},{"kind":"Field","name":{"kind":"Name","value":"meterType"}},{"kind":"Field","name":{"kind":"Name","value":"minimuVendAmount"}}]}}]}}]} as unknown as DocumentNode<ElectricityBill_VerifyAccountMutation, ElectricityBill_VerifyAccountMutationVariables>;
export const ElectricityBill_MakePaymentDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"ElectricityBill_makePayment"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"ElectricityBill_PaymentInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"electricityBill_makePayment"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"amount"}},{"kind":"Field","name":{"kind":"Name","value":"biller"}},{"kind":"Field","name":{"kind":"Name","value":"bonusToken"}},{"kind":"Field","name":{"kind":"Name","value":"chargedAmount"}},{"kind":"Field","name":{"kind":"Name","value":"commission"}},{"kind":"Field","name":{"kind":"Name","value":"customerId"}},{"kind":"Field","name":{"kind":"Name","value":"transactionDate"}},{"kind":"Field","name":{"kind":"Name","value":"unit"}}]}}]}}]} as unknown as DocumentNode<ElectricityBill_MakePaymentMutation, ElectricityBill_MakePaymentMutationVariables>;
export const TvBills_GetProvidersDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"tvBills_getProviders"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"TvBill_GetTVProvidersInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"tvBills_getProviders"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"logo"}},{"kind":"Field","name":{"kind":"Name","value":"category"}},{"kind":"Field","name":{"kind":"Name","value":"name"}},{"kind":"Field","name":{"kind":"Name","value":"slug"}}]}}]}}]} as unknown as DocumentNode<TvBills_GetProvidersQuery, TvBills_GetProvidersQueryVariables>;
export const TvBills_GetBouquetDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"tvBills_getBouquet"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"TvBill_GetTVBouquetInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"tvBills_getBouquet"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"code"}},{"kind":"Field","name":{"kind":"Name","value":"description"}},{"kind":"Field","name":{"kind":"Name","value":"price"}}]}}]}}]} as unknown as DocumentNode<TvBills_GetBouquetQuery, TvBills_GetBouquetQueryVariables>;
export const TvBills_ValidateAccountDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"tvBills_validateAccount"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"TvBill_ValidateAccountInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"tvBills_validateAccount"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"customerName"}},{"kind":"Field","name":{"kind":"Name","value":"service"}},{"kind":"Field","name":{"kind":"Name","value":"smartCardNumber"}}]}}]}}]} as unknown as DocumentNode<TvBills_ValidateAccountMutation, TvBills_ValidateAccountMutationVariables>;
export const TvBills_MakePaymentDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"tvBills_makePayment"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"TvBill_PaymentInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"tvBills_makePayment"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"amount"}},{"kind":"Field","name":{"kind":"Name","value":"biller"}},{"kind":"Field","name":{"kind":"Name","value":"commission"}},{"kind":"Field","name":{"kind":"Name","value":"customerId"}},{"kind":"Field","name":{"kind":"Name","value":"transactionId"}},{"kind":"Field","name":{"kind":"Name","value":"transactionDate"}},{"kind":"Field","name":{"kind":"Name","value":"customerId"}}]}}]}}]} as unknown as DocumentNode<TvBills_MakePaymentMutation, TvBills_MakePaymentMutationVariables>;
export const FundBetting_GetProvidersDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"fundBetting_getProviders"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"BettingProvidersInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"fundBetting_getProviders"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"logo"}},{"kind":"Field","name":{"kind":"Name","value":"name"}}]}},{"kind":"Field","name":{"kind":"Name","value":"fundBetting_getPriceList"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"amount"}}]}}]}}]} as unknown as DocumentNode<FundBetting_GetProvidersQuery, FundBetting_GetProvidersQueryVariables>;
export const FundBetting_MakePaymentDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"fundBetting_makePayment"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"BettingPaymentInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"fundBetting_makePayment"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"amount"}},{"kind":"Field","name":{"kind":"Name","value":"customer_name"}},{"kind":"Field","name":{"kind":"Name","value":"customer_username"}},{"kind":"Field","name":{"kind":"Name","value":"customer_phone_number"}},{"kind":"Field","name":{"kind":"Name","value":"customer_email_address"}},{"kind":"Field","name":{"kind":"Name","value":"order_id"}},{"kind":"Field","name":{"kind":"Name","value":"service_name"}},{"kind":"Field","name":{"kind":"Name","value":"request_id"}}]}}]}}]} as unknown as DocumentNode<FundBetting_MakePaymentMutation, FundBetting_MakePaymentMutationVariables>;
export const WalletCrypto_CreateDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"WalletCrypto_create"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"walletCrypto_create"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"address"}},{"kind":"Field","name":{"kind":"Name","value":"chainType"}},{"kind":"Field","name":{"kind":"Name","value":"id"}},{"kind":"Field","name":{"kind":"Name","value":"wallet_id"}}]}}]}}]} as unknown as DocumentNode<WalletCrypto_CreateMutation, WalletCrypto_CreateMutationVariables>;
export const WalletCrypto_GetAllDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"WalletCrypto_getAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"walletCrypto_getAll"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"address"}},{"kind":"Field","name":{"kind":"Name","value":"chainType"}},{"kind":"Field","name":{"kind":"Name","value":"id"}},{"kind":"Field","name":{"kind":"Name","value":"wallet_id"}}]}}]}}]} as unknown as DocumentNode<WalletCrypto_GetAllQuery, WalletCrypto_GetAllQueryVariables>;
export const WalletCrypto_MobileCreateDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"WalletCrypto_mobileCreate"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"Wallet_CreateInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"walletCrypto_mobileCreate"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"message"}}]}}]}}]} as unknown as DocumentNode<WalletCrypto_MobileCreateMutation, WalletCrypto_MobileCreateMutationVariables>;