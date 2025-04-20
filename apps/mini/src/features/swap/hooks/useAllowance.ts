import { getAddress } from '@mento-protocol/mento-sdk'
import { useQuery } from '@tanstack/react-query'
import { BrowserProvider, Contract } from 'ethers'
import { getTradablePairForTokens } from 'src/features/sdk'
import { useProvider } from 'src/hooks/useProvider'
import { ERC20_ABI } from 'src/lib/config/consts'
import { TokenId, getTokenAddress } from 'src/lib/config/tokens'
import { logger } from 'src/lib/utils/logger'

async function fetchAllowance(
  fromTokenId: TokenId,
  toTokenId: TokenId,
  accountAddress: string,
  chainId: number,
  provider: BrowserProvider
): Promise<string> {
  const tradablePair = await getTradablePairForTokens(chainId, fromTokenId, toTokenId)
  const brokerAddress = getAddress('Broker', chainId)
  const routerAddress = getAddress('MentoRouter', chainId)
  const tokenAddr = getTokenAddress(fromTokenId, chainId)

  logger.info(`Fetching allowance for token ${tokenAddr} on chain ${chainId}`)
  // const provider = getProvider(chainId)
  const signer = await provider.getSigner()
  const contract = new Contract(tokenAddr, ERC20_ABI, signer)

  let allowedContractAddr: string
  if (tradablePair.path.length === 1) {
    allowedContractAddr = brokerAddress
  } else {
    allowedContractAddr = routerAddress
  }

  const allowance = await contract.allowance(accountAddress, allowedContractAddr)
  logger.info(`Allowance: ${allowance.toString()}`)
  return allowance.toString()
}

export function useAllowance(
  chainId: number,
  fromTokenId: TokenId,
  toTokenId: TokenId,
  address?: string
) {
  const provider = useProvider()
  const { data: allowance, isLoading } = useQuery(
    ['tokenAllowance', chainId, fromTokenId, toTokenId, address],
    async () => {
      if (!address) return '0'
      return fetchAllowance(fromTokenId, toTokenId, address, chainId, provider)
    },
    {
      retry: false,
      enabled: Boolean(address && chainId && fromTokenId && toTokenId),
      staleTime: 5000, // Consider allowance stale after 5 seconds
    }
  )

  return {
    allowance: allowance || '0',
    isLoading,
  }
}
