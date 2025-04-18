import { Mento, TradablePair } from '@mento-protocol/mento-sdk'
import { getProvider } from 'src/features/providers'
import { ChainId } from 'src/lib/config/chains'
import { TokenId, getTokenAddress } from 'src/lib/config/tokens'

const cache: Record<number, Mento> = {}

export async function getMentoSdk(chainId: ChainId): Promise<Mento> {
  if (cache[chainId]) return cache[chainId]

  const provider = getProvider(chainId)
  const mento = await Mento.create(provider)
  cache[chainId] = mento
  return mento
}

export async function getTradablePairForTokens(
  chainId: ChainId,
  tokenInId: TokenId,
  tokenOutId: TokenId
): Promise<TradablePair> {
  const sdk = await getMentoSdk(chainId)
  const tokenInAddr = getTokenAddress(tokenInId, chainId)
  const tokenOutAddr = getTokenAddress(tokenOutId, chainId)
  return await sdk.findPairForTokens(tokenInAddr, tokenOutAddr)
}
