/* eslint-disable */
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

export type Advert_CreateInput = {
  advertStatus: AdvertStatus;
  currencyCrypto: CurrencyCrypto;
  currencyFiat: CurrencyFiat;
  duration: Scalars['String']['input'];
  fiatAmountPerCrypto: Scalars['Float']['input'];
  instructions: Scalars['String']['input'];
  isFloatRate?: InputMaybe<Scalars['Boolean']['input']>;
  limitLower: Scalars['Float']['input'];
  limitUpper: Scalars['Float']['input'];
  merchant_id: Scalars['Float']['input'];
  rate?: InputMaybe<Scalars['String']['input']>;
  rateFixed?: InputMaybe<Scalars['Float']['input']>;
  rateFloat?: InputMaybe<Scalars['Float']['input']>;
  tradeType: TradeType;
  wallet_address: Scalars['String']['input'];
};

export type Advert_DeleteInput = {
  id: Scalars['ID']['input'];
};

export type Advert_GetAllInput = {
  status?: InputMaybe<AdvertStatus>;
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
  isFloatRate?: Maybe<Scalars['Boolean']['output']>;
  limitLower?: Maybe<Scalars['Float']['output']>;
  limitUpper?: Maybe<Scalars['Float']['output']>;
  merchant_id?: Maybe<Scalars['Float']['output']>;
  merchant_nickname?: Maybe<Scalars['String']['output']>;
  merchant_trade_count?: Maybe<Scalars['Float']['output']>;
  rate?: Maybe<Scalars['String']['output']>;
  rateFixed?: Maybe<Scalars['Float']['output']>;
  rateFloat?: Maybe<Scalars['Float']['output']>;
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
  isFloatRate?: InputMaybe<Scalars['Boolean']['input']>;
  limitLower: Scalars['Float']['input'];
  limitUpper: Scalars['Float']['input'];
  merchant_id: Scalars['Float']['input'];
  rate?: InputMaybe<Scalars['String']['input']>;
  rateFixed?: InputMaybe<Scalars['Float']['input']>;
  rateFloat?: InputMaybe<Scalars['Float']['input']>;
  tradeType: TradeType;
  wallet_address: Scalars['String']['input'];
};

export enum AirtimeCountryCode {
  Ghana = 'GHANA',
  Kenya = 'KENYA',
  Nigeria = 'NIGERIA'
}

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
  adverts_create: Advert_GetResponse;
  adverts_delete: Advert_GetResponse;
  adverts_update: Advert_GetResponse;
  auth_createAccount: Auth_CreateAccountResponse;
  auth_login: Auth_LoginResponse;
  auth_loginTelegram: Auth_TelegramLoginResponse;
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
  orders_Appeal: Order_Response;
  orders_Cancel: Order_Response;
  orders_CreateBuy: Order_CreteBuyResponse;
  orders_CreateSell: Order_CreteSellResponse;
  orders_MoveCryptoToEscrow: Order_Response;
  utility_purchaseAirtime: Utilities_PurchaseAirtimeResponse;
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


export type MutationOrders_AppealArgs = {
  input: Order_AppealInput;
};


export type MutationOrders_CancelArgs = {
  input: Order_CancelInput;
};


export type MutationOrders_CreateBuyArgs = {
  input: Order_CreteBuyInput;
};


export type MutationOrders_CreateSellArgs = {
  input: Order_CreteSellInput;
};


export type MutationOrders_MoveCryptoToEscrowArgs = {
  input: Order_MoveCryptoToEscrowInput;
};


export type MutationUtility_PurchaseAirtimeArgs = {
  input: Utilities_PurchaseAirtimeInput;
};

export enum Operator {
  Airtel = 'AIRTEL',
  Etisalat = 'ETISALAT',
  Glo = 'GLO',
  Mtn = 'MTN'
}

export enum OrderActions {
  Appeal = 'Appeal',
  Cancel = 'Cancel',
  FaitReceived = 'FaitReceived',
  FaitSent = 'FaitSent',
  LockCrypto = 'LockCrypto',
  ReleaseCrypto = 'ReleaseCrypto'
}

export enum OrderMode {
  Express = 'EXPRESS',
  Market = 'MARKET'
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

export type Order_CreteBuyInput = {
  action_merchant?: InputMaybe<OrderActions>;
  action_user?: InputMaybe<OrderActions>;
  amount_crypto: Scalars['Float']['input'];
  amount_fiat: Scalars['Float']['input'];
  bank_account_name: Scalars['String']['input'];
  bank_account_no: Scalars['String']['input'];
  bank_code: Scalars['String']['input'];
  bank_name: BankName;
  currency_crypto: CurrencyCrypto;
  currency_fiat: CurrencyFiat;
  estimated_duration: Scalars['String']['input'];
  merchant_id: Scalars['Float']['input'];
  mode?: InputMaybe<OrderMode>;
  status: OrderStatus;
  trade_type: TradeType;
  txn_hash?: InputMaybe<Scalars['String']['input']>;
  wallet_customer: Scalars['String']['input'];
  wallet_merchant: Scalars['String']['input'];
};

export type Order_CreteBuyResponse = {
  __typename?: 'Order_CreteBuyResponse';
  action_merchant?: Maybe<OrderActions>;
  action_user?: Maybe<OrderActions>;
  amount_crypto?: Maybe<Scalars['Float']['output']>;
  amount_fiat?: Maybe<Scalars['Float']['output']>;
  bank_account_name?: Maybe<Scalars['String']['output']>;
  bank_account_no?: Maybe<Scalars['String']['output']>;
  bank_code?: Maybe<Scalars['String']['output']>;
  bank_name?: Maybe<BankName>;
  currency_crypto?: Maybe<CurrencyCrypto>;
  currency_fiat?: Maybe<CurrencyFiat>;
  estimated_duration?: Maybe<Scalars['String']['output']>;
  id: Scalars['ID']['output'];
  merchant_id?: Maybe<Scalars['Float']['output']>;
  mode?: Maybe<OrderMode>;
  status?: Maybe<OrderStatus>;
  trade_type?: Maybe<TradeType>;
  txn_hash?: Maybe<Scalars['String']['output']>;
  wallet_customer?: Maybe<Scalars['String']['output']>;
  wallet_merchant?: Maybe<Scalars['String']['output']>;
};

export type Order_CreteSellInput = {
  action_merchant?: InputMaybe<OrderActions>;
  action_user?: InputMaybe<OrderActions>;
  amount_crypto: Scalars['Float']['input'];
  amount_fiat: Scalars['Float']['input'];
  bank_account_name: Scalars['String']['input'];
  bank_account_no: Scalars['String']['input'];
  bank_code: Scalars['String']['input'];
  bank_name: BankName;
  currency_crypto: CurrencyCrypto;
  currency_fiat: CurrencyFiat;
  estimated_duration: Scalars['String']['input'];
  merchant_id: Scalars['Float']['input'];
  mode?: InputMaybe<OrderMode>;
  status: OrderStatus;
  trade_type: TradeType;
  txn_hash?: InputMaybe<Scalars['String']['input']>;
  wallet_customer: Scalars['String']['input'];
  wallet_merchant: Scalars['String']['input'];
};

export type Order_CreteSellResponse = {
  __typename?: 'Order_CreteSellResponse';
  action_merchant?: Maybe<OrderActions>;
  action_user?: Maybe<OrderActions>;
  amount_crypto?: Maybe<Scalars['Float']['output']>;
  amount_fiat?: Maybe<Scalars['Float']['output']>;
  bank_account_name?: Maybe<Scalars['String']['output']>;
  bank_account_no?: Maybe<Scalars['String']['output']>;
  bank_code?: Maybe<Scalars['String']['output']>;
  bank_name?: Maybe<BankName>;
  currency_crypto?: Maybe<CurrencyCrypto>;
  currency_fiat?: Maybe<CurrencyFiat>;
  estimated_duration?: Maybe<Scalars['String']['output']>;
  id: Scalars['ID']['output'];
  merchant_id?: Maybe<Scalars['Float']['output']>;
  mode?: Maybe<OrderMode>;
  status?: Maybe<OrderStatus>;
  trade_type?: Maybe<TradeType>;
  txn_hash?: Maybe<Scalars['String']['output']>;
  wallet_customer?: Maybe<Scalars['String']['output']>;
  wallet_merchant?: Maybe<Scalars['String']['output']>;
};

export type Order_GetAllInput = {
  currency_crypto?: InputMaybe<CurrencyCrypto>;
  currency_fiat?: InputMaybe<CurrencyFiat>;
  status?: InputMaybe<OrderStatus>;
  trade_type?: InputMaybe<TradeType>;
};

export type Order_GetOneInput = {
  id: Scalars['ID']['input'];
};

export type Order_MoveCryptoToEscrowInput = {
  action: OrderActions;
  amountCrypto: Scalars['Int']['input'];
  currencyCrypto: CurrencyCrypto;
  id: Scalars['ID']['input'];
};

export type Order_Response = {
  __typename?: 'Order_Response';
  action_merchant?: Maybe<OrderActions>;
  action_user?: Maybe<OrderActions>;
  amount_crypto?: Maybe<Scalars['Float']['output']>;
  amount_fiat?: Maybe<Scalars['Float']['output']>;
  bank_account_name?: Maybe<Scalars['String']['output']>;
  bank_account_no?: Maybe<Scalars['String']['output']>;
  bank_code?: Maybe<Scalars['String']['output']>;
  bank_name?: Maybe<BankName>;
  currency_crypto?: Maybe<CurrencyCrypto>;
  currency_fiat?: Maybe<CurrencyFiat>;
  estimated_duration?: Maybe<Scalars['String']['output']>;
  id: Scalars['ID']['output'];
  merchant_id?: Maybe<Scalars['Float']['output']>;
  mode?: Maybe<OrderMode>;
  status?: Maybe<OrderStatus>;
  trade_type?: Maybe<TradeType>;
  txn_hash?: Maybe<Scalars['String']['output']>;
  wallet_customer?: Maybe<Scalars['String']['output']>;
  wallet_merchant?: Maybe<Scalars['String']['output']>;
};

export enum OtpPurpose {
  SignUp = 'SignUp',
  Verification = 'Verification'
}

export type Query = {
  __typename?: 'Query';
  adverts_getAll: Array<Advert_GetResponse>;
  adverts_getMerchantAdverts: Array<Advert_GetResponse>;
  adverts_getOne: Advert_GetResponse;
  bankAccount_getAll: Array<BankAccount_Response>;
  fxRate_GetAll: ExchangeRate_Response;
  orders_GetAll: Array<Order_Response>;
  orders_GetAllAsMerchant: Array<Order_Response>;
  orders_GetAllForAdmin: Array<Order_Response>;
  orders_GetOne: Order_Response;
  transactions_getAll: Array<Transaction_GetResponse>;
  transactions_getOne: Transaction_GetResponse;
  user_getAll: Array<UserDto>;
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


export type QueryUser_GetOneArgs = {
  input: UserGetInfo;
};

export enum TradeType {
  Buy = 'BUY',
  Sell = 'SELL'
}

export enum TransactionCategory {
  Airtime = 'AIRTIME',
  DataBundle = 'DATA_BUNDLE',
  ExpressExchange = 'EXPRESS_EXCHANGE',
  GiftCard = 'GIFT_CARD',
  P2PExchange = 'P2P_EXCHANGE'
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

export type UserDto = {
  __typename?: 'UserDto';
  country?: Maybe<Country>;
  email?: Maybe<Scalars['String']['output']>;
  firstname?: Maybe<Scalars['String']['output']>;
  id: Scalars['ID']['output'];
  lastname?: Maybe<Scalars['String']['output']>;
  middlename?: Maybe<Scalars['String']['output']>;
  password?: Maybe<Scalars['String']['output']>;
  phone?: Maybe<Scalars['String']['output']>;
  role?: Maybe<Scalars['String']['output']>;
  telegram_id?: Maybe<Scalars['String']['output']>;
};

export type UserGetInfo = {
  userId: Scalars['Float']['input'];
};

export type Utilities_PurchaseAirtimeInput = {
  amount: Scalars['Float']['input'];
  countryCode: AirtimeCountryCode;
  currency: CurrencyFiat;
  operator: Operator;
  phoneNo: Scalars['String']['input'];
  transaction_hash: Scalars['String']['input'];
};

export type Utilities_PurchaseAirtimeResponse = {
  __typename?: 'Utilities_PurchaseAirtimeResponse';
  message: Scalars['String']['output'];
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
