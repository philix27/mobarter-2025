import { useAppContext } from 'src/Root/context'
import { ChainId } from 'src/lib/config/chains'
import { TokenId, getTokenAddress } from 'src/lib/config/tokens'
import { formatEtherBalance } from 'src/lib/utils'
import { useBalance } from 'wagmi'

export const useTokenBalance = (id: TokenId) => {
  const { evmAddress } = useAppContext()
  const { data, isLoading } = useBalance({
    address: evmAddress as `0x${string}`,
    chainId: ChainId.Celo,
    token: getTokenAddress(id, ChainId.Celo) as `0x${string}`,
  })

  return isLoading ? '...' : `${formatEtherBalance(data!.value, data!.decimals, 3)} ${id}`
}
