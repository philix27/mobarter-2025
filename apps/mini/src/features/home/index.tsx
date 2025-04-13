import { useRouter } from 'next/router'
import { IconType } from 'react-icons'
import { BsSend } from 'react-icons/bs'
import { GoHistory } from 'react-icons/go'
import { IoSwapHorizontalOutline } from 'react-icons/io5'
import { SlWallet } from 'react-icons/sl'
import { tokensList } from 'src/lib/config/tokenData'
import { AppStores } from 'src/lib/zustand'

import Airtime from '../airtime'

import BottomPopup from './BottomPopup'
import { TokenRow } from './TokenRow'
import HomeTabs from './tabs'

export default function Home() {
  const store = AppStores.useSettings()
  const router = useRouter()
  // const { provider } = useEthereum() // For provider retrieval

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
      title: 'Swap',
      icon: IoSwapHorizontalOutline,
      onClick: () => {
        store.update({ homeBtmSheet: 'SWAP' })
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
      <div
        className={`w-full 
        items-center justify-center flex flex-col
        bg-background
        pt-[5px] mb-5`}
      >
        <HomeTabs />

        <div className="h-full flex items-center justify-center mt-5">
          <p className="text-[27.5px]">23.000 cUSD</p>
        </div>
        <div className="flex w-full items-center justify-around mt-[20px]">
          {icons.map((val, i) => {
            const Icon = val.icon as any
            return (
              <div
                key={i}
                className="flex flex-col items-center justify-center"
                onClick={val.onClick}
              >
                <div className="p-2 bg-card rounded-full h-[45px] w-[45px] flex items-center justify-center hover:bg-primary">
                  <Icon size={20} />
                </div>
                <p className="text-[10px] font-normal text-muted"> {val.title}</p>
              </div>
            )
          })}
        </div>
      </div>
      {store.homeTab === 'Services' ? (
        <Airtime />
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
