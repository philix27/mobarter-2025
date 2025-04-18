import { useEffect, useMemo, useState } from 'react';
import { Celo } from 'src/lib/config/chains';
import { TokenId,  getSwappableTokenOptions,  getTokenOptionsByChainId } from 'src/lib/config/tokens';
import { logger } from 'src/utils/logger';
import { useChainId } from 'wagmi';


export function useTokenOptions(fromTokenId: TokenId) {
  const _chainId = useChainId()
  // const { chain } = useNetwork()
  const chainId = useMemo(() => _chainId ?? Celo.chainId, [_chainId])
  const [swappableTokens, setSwappableTokens] = useState<TokenId[]>([])

  // Get all available tokens for current chain
  const allTokenOptions = useMemo(() => {
    return getTokenOptionsByChainId(chainId)
  }, [chainId])

  // Get tokens that can be swapped with selected token
  useEffect(() => {
    const fetchSwappableTokens = async () => {
      const tokens = await getSwappableTokenOptions(fromTokenId, chainId)
      setSwappableTokens(tokens)
    }

    fetchSwappableTokens().catch(logger.error)
  }, [chainId, fromTokenId])

  return {
    allTokenOptions,
    swappableTokens,
  }
}