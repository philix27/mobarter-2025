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

import * as tc from 'thirdweb/chains'
export const supportedTWChains: Record<
  IChains,
  Readonly<
    tc.ChainOptions & {
      rpc: string
    }
  >
> = {
  CELO: tc.celo,
  BASE: tc.base,
  OPTIMISM: tc.optimism,
  ETHEREUM: tc.mainnet,
  ARBITRUM: tc.arbitrum,
  POLYGON: tc.polygon,
  ZKSYNC: tc.zkSync,
  LINEA: tc.linea,
}
