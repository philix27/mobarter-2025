import { arbitrum, base, celo, Chain, linea, mainnet, optimism, polygon, zksync } from 'viem/chains'

export type IChains =
  | 'CELO'
  | 'BASE'
  | 'OPTIMISM'
  | 'ETHEREUM'
  | 'ARBITRUM'
  | 'POLYGON'
  | 'ZKSYNC'
  | 'LINEA'

// export const supportedChains = {
export const supportedChains: Record<IChains, Chain> = {
  CELO: celo,
  BASE: base,
  OPTIMISM: optimism,
  ETHEREUM: mainnet,
  ARBITRUM: arbitrum,
  POLYGON: polygon,
  ZKSYNC: zksync,
  LINEA: linea,
}
