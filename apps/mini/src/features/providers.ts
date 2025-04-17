import { ethers } from 'ethers'
import { ChainId, chainIdToChain } from 'src/lib/config/chains'

// import { ChainId, chainIdToChain } from 'src/config/chains'

const cache: Record<number, ethers.JsonRpcProvider> = {}

// TODO remove and replace with useProvider from wagmi
export function getProvider(chainId: ChainId): ethers.JsonRpcProvider {
  if (cache[chainId]) return cache[chainId]
  const chain = chainIdToChain[chainId]
  const provider = new ethers.JsonRpcProvider(chain.rpcUrl, chainId)
  cache[chainId] = provider
  return provider
}
