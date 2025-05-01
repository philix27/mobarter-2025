import { ChainId } from 'src/lib/config/chains'
import { tokensList } from 'src/lib/config/tokenData'
import { TokenId, getTokenAddress } from 'src/lib/config/tokens'
import { formatEtherBalance } from 'src/lib/utils'
import { useBalance } from 'wagmi'

import HomePopups from './HomePopups'
import { TokenRow } from './TokenRow'
import { HomeTabs } from './TopTabs'
import { useAppContext } from '@/src/Root/TgContext'

export default function Home() {
  return (
    <div className="w-full items-center justify-center flex flex-col">
      <HomeTabs />
      <Balance />

      <div className="h-8" />

      <div className="flex flex-col rounded-md w-full gap-y-[0.1px] px-1 py-1">
        {tokensList.map((val, i) => (
          <TokenRow key={i} {...val} className="bg-card" />
        ))}
      </div>
      <HomePopups />
    </div>
  )
}

function Balance() {
  const { evmAddress } = useAppContext()

  const { data, isLoading } = useBalance({
    address: evmAddress as `0x${string}`,
    chainId: ChainId.Celo,
    token: getTokenAddress(TokenId.cUSD, ChainId.Celo) as `0x${string}`,
  })

  if (isLoading)
    return (
      <div className="h-full flex items-center justify-center mt-5">
        <p className="text-[25px]">.. .. cUSD</p>
      </div>
    )

  return (
    <div className="h-full flex items-center justify-center mt-5">
      <p className="text-[25px]">{formatEtherBalance(data!.value, data!.decimals, 3)} cUSD</p>
    </div>
  )
}
