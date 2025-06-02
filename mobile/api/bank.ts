export type IBank = {
  id: number;
  name: string;
  code: string;
  slug: string;
  created_at: string;
  updated_at: string;
  longcode: string;
  gateway: string;
  pay_with_bank: number;
  active: number;
  country: string;
  currency: string;
  type: string;
  is_deleted: number;
};


export interface IChainMetadata {
  chainId: number;
  name: string;
  rpcUrl: string;
  explorerUrl: string;
  explorerApiUrl: string;
  logoUrl: string;
}

export type IToken = {
  chianId: number
  id: string
  symbol: string
  name: string
  color: string
  address: string
  decimals: number
  logoUrl: string
  balance: string
  tokenPrice: string
  isPayable?: boolean
  isBuyable?: boolean
  isSellable?: boolean
}
