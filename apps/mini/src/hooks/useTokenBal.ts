import { ChainId } from 'src/lib/config/chains'
import { TokenId, getTokenAddress } from 'src/lib/config/tokens'
import { formatEtherBalance } from 'src/lib/utils'
import { useAccount, useBalance } from 'wagmi'

import { useAppContext } from '@/src/Root/TgContext'

export const useTokenBalance = (id: TokenId) => {
  const { evmAddress } = useAppContext()

  const addr = evmAddress
  const { data, isLoading } = useBalance({
    address: addr as `0x${string}`,
    chainId: ChainId.Celo,
    token: getTokenAddress(id, ChainId.Celo) as `0x${string}`,
  })

  return isLoading ? '...' : `${formatEtherBalance(data!.value, data!.decimals, 3)} ${id}`
}

export const useTokenBalanceWeb = (id: TokenId) => {
  const { address } = useAccount()

  const addr = address
  const { data, isLoading } = useBalance({
    address: addr as `0x${string}`,
    chainId: ChainId.Celo,
    token: getTokenAddress(id, ChainId.Celo) as `0x${string}`,
  })

  return isLoading ? '...' : `${formatEtherBalance(data!.value, data!.decimals, 3)} ${id}`
}
