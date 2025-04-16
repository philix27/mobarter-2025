export interface ITopUpAirtime {
  transactionId: number;
  status: string;
  operatorTransactionId: string;
  customIdentifier: string;
  recipientPhone: number;
  recipientEmail: any;
  senderPhone: number;
  countryCode: string;
  operatorId: number;
  operatorName: string;
  discount: number;
  discountCurrencyCode: string;
  requestedAmount: number;
  requestedAmountCurrencyCode: string;
  deliveredAmount: number;
  deliveredAmountCurrencyCode: string;
  transactionDate: string;
  fee: number;
  pinDetail: PinDetail;
  balanceInfo: BalanceInfo;
}

export interface PinDetail {
  serial: number;
  info1: string;
  info2: string;
  info3: string;
  value: any;
  code: number;
  ivr: string;
  validity: string;
}

export interface BalanceInfo {
  oldBalance: number;
  newBalance: number;
  currencyCode: string;
  currencyName: string;
  updatedAt: string;
}
