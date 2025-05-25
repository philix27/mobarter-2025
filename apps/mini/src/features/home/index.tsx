import { memo } from 'react'
import { useBalance } from 'wagmi'

import WalletTransactions from '../history/WalletTrans'
import { getBal } from '../utilities/getBalance'

import HomePopups from './HomePopups'
import QuickActions from './QuickActions'
import { Tabs } from './Tabs'
import { TokenRow } from './TokenRow'
import { TopBar } from './TopBar'
import { useAppContext } from '@/src/Root/TgContext'
import { ChainId, TokenId, getTokenAddress, tokensList } from '@/src/lib/config'
import { AppStores } from '@/src/lib/zustand'

export default function Home() {
  const store = AppStores.useSettings()
  return (
    <div className="w-full items-center justify-center flex flex-col">
      <TopBar />
      <Balance />
      <QuickActions />
      <div className="h-5" />
      <Tabs />
      {store.homeTab === 'TX_HISTORY' ? <WalletTransactions /> : <TokensList />}
      <HomePopups />
    </div>
  )
}

const TokensList = memo(function Comp() {
  return (
    <div className="flex flex-col rounded-md w-full gap-y-[0.1px] px-1 py-1">
      {tokensList.map((val, i) => {
        if (val === undefined) return <div key={i} />
        const tokenId = val.symbol as TokenId
        if (tokenId === undefined) return <div key={i} />
        return <TokenRow key={i} {...val} className="bg-card" />
      })}
    </div>
  )
})

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
      <p className="text-[25px]">{getBal(data)} cUSD</p>
    </div>
  )
}
