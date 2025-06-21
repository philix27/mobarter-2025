export interface IChainMetadata {
  chainId: number
  name: string
  rpcUrl: string
  explorerUrl: string
  explorerApiUrl: string
  logoUrl: string
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
