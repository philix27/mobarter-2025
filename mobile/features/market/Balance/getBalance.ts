import StableTokenABI from './cusdAbi.json'
import { Chain, isAddress, createPublicClient, http } from 'viem'
import { celo, base } from 'viem/chains'

export enum ChainId {
  Celo = 42220,
  Base = 8453,
}

const chains: Record<ChainId, Chain> = {
  [ChainId.Celo]: celo,
  [ChainId.Base]: base,
}

export async function getBalance({
  chianId,
  address,
  tokenAddress,
}: {
  chianId: string
  address: string
  tokenAddress: string
}) {
  if (!isAddress(address)) {
    throw new Error('Invalid Address')
  }

  const client = createPublicClient({
    chain: chains[chianId as unknown as ChainId],
    transport: http(),
  })

  const tokenBalance = (await client.readContract({
    address: tokenAddress as `0x${string}`,
    abi: StableTokenABI.abi,
    functionName: 'balanceOf',
    args: [address],
  })) as number

  return formatTokenBalance(tokenBalance)
}

export function formatEtherBalance(balance: bigint, decimals = 18, precision = 6) {
  const divisor = 10 ** decimals
  const ether = Number(balance) / divisor
  return ether.toFixed(precision) // returns a string like "0.1234"
}

/**
 * Formats a token balance for easy reading.
 *
 * @param rawBalance - Raw token balance (string or number in smallest unit like wei)
 * @param decimals - Number of decimals the token uses (e.g., 18 for ETH)
 * @param precision - Number of decimal places to show (default is 4)
 * @returns Formatted balance string
 */
export function formatTokenBalance(
  rawBalance: string | number,
  decimals: number = 18,
  precision: number = 4
): string {
  const bigBalance = Number(rawBalance) / Math.pow(10, decimals)

  if (isNaN(bigBalance)) return '0'

  return bigBalance.toLocaleString(undefined, {
    minimumFractionDigits: 0,
    maximumFractionDigits: precision,
  })
}
