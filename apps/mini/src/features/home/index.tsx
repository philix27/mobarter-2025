import { useRouter } from 'next/router'
import { IconType } from 'react-icons'
import { BsSend } from 'react-icons/bs'
import { GoHistory } from 'react-icons/go'
import { IoSwapHorizontalOutline } from 'react-icons/io5'
import { SlWallet } from 'react-icons/sl'
import { useAppContext } from 'src/Root/context'
import { ChainId } from 'src/lib/config/chains'
import { tokensList } from 'src/lib/config/tokenData'
import { TokenId, getTokenAddress } from 'src/lib/config/tokens'
import { formatEtherBalance } from 'src/lib/utils'
import { AppStores } from 'src/lib/zustand'
import { useBalance } from 'wagmi'

import BottomPopup from './BottomPopup'
import { TokenRow } from './TokenRow'
import Utilities from './Utilities'
import RoundIcon from './comps'
import HomeTabs from './tabs'

export default function Home() {
  const store = AppStores.useSettings()
  const router = useRouter()
  const icons: { title: string; onClick: VoidFunction; icon: IconType }[] = [
    {
      title: 'Send',
      icon: BsSend,
      onClick: () => {
        store.update({ homeBtmSheet: 'SEND_CRYPTO' })
      },
    },
    {
      title: 'Receive',
      icon: SlWallet,
      onClick: () => {
        store.update({ homeBtmSheet: 'WALLET' })
      },
    },
    {
      title: 'Withdraw',
      icon: IoSwapHorizontalOutline,
      onClick: () => {
        store.update({ homeBtmSheet: 'WITHDRAW' })
      },
    },
    {
      title: 'History',
      icon: GoHistory,
      onClick: () => {
        void router.push('/history')
      },
    },
  ]

  return (
    <div className="w-full items-center justify-center flex flex-col">
      <HomeTabs />
      <Balance />
      <div className="flex w-full items-center justify-around mt-[30px] mb-[20px]">
        {icons.map((val, i) => {
          return <RoundIcon key={i} Icon={val.icon} title={val.title} onClick={val.onClick} />
        })}
      </div>

      {store.homeTab === 'Services' ? (
        <Utilities />
      ) : (
        <div className="flex flex-col bg-card rounded-md w-full gap-y-[0.1px] px-1 py-1">
          {tokensList.map((val, i) => (
            <TokenRow key={i} {...val} />
          ))}
        </div>
      )}
      <BottomPopup />
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
