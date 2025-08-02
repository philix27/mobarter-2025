import { ChainId } from 'src/lib/config/chains'
import { TokenId, getTokenAddress } from 'src/lib/config/tokens'
import { useAccount, useBalance } from 'wagmi'

// import { getBal } from '../../.reserve/utilities/getBalance'

// import { useAppContext } from '@/src/Root/TgContext'

export const useTokenBalance = (id: TokenId) => {
  const addr = "evmAddress"
  const { isLoading } = useBalance({
    address: addr as `0x${string}`,
    chainId: ChainId.Celo,
    token: getTokenAddress(id, ChainId.Celo) as `0x${string}`,
  })

  return isLoading ? '...' : `${123} ${id}`
}

export const useTokenBalanceWeb = (id: TokenId) => {
  const { address } = useAccount()

  const addr = address
  const { isLoading } = useBalance({
    address: addr as `0x${string}`,
    chainId: ChainId.Celo,
    token: getTokenAddress(id, ChainId.Celo) as `0x${string}`,
  })

  return isLoading ? '...' : `${123} ${id}`
}
