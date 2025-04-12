import { useRouter } from 'next/router'
import { useState } from 'react'
import { IconType } from 'react-icons'
import { BsSend } from 'react-icons/bs'
import { GoHistory } from 'react-icons/go'
import { IoSwapHorizontalOutline } from 'react-icons/io5'
import { SlWallet } from 'react-icons/sl'
import QRCode from 'react-qr-code'
import { useAppContext } from 'src/Root/context'
import BottomModal from 'src/components/BottomModal'
import { Button } from 'src/components/Button'
import { Label } from 'src/components/comps'
import { copyTextToClipboard, shortString } from 'src/utils'

import { TokenRow } from './TokenRow'
import HomeTabs from './tabs'
import { dummyTokens } from './tokenData'

export default function Home() {
  const [showWallet, setShowWallet] = useState(false)
  const router = useRouter()
  const icons: { title: string; onClick: VoidFunction; icon: IconType }[] = [
    {
      title: 'Send',
      icon: BsSend,
      onClick: () => {
        void router.push('/send')
      },
    },
    {
      title: 'Receive',
      icon: SlWallet,
      onClick: () => {
        setShowWallet(true)
      },
    },
    {
      title: 'Swap',
      icon: IoSwapHorizontalOutline,
      onClick: () => {
        void router.push('/swap')
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

  const { evmAddress } = useAppContext()
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
                <p className="text-[10px] font-normal"> {val.title}</p>
              </div>
            )
          })}
        </div>
      </div>
      <div className="flex flex-col bg-card rounded-md w-full gap-y-[0.1px] px-1 py-1">
        {dummyTokens.map((val, i) => (
          <TokenRow key={i} {...val} />
        ))}
      </div>
      <BottomModal
        title="Wallet address"
        showSheet={showWallet}
        onClose={() => {
          setShowWallet(false)
        }}
      >
        <div className="w-full items-center justify-center flex flex-col">
          <QRCode
            size={256}
            style={{ height: 'auto' }}
            value={evmAddress || 'Not found'}
            viewBox={`0 0 256 256`}
            enableBackground={'#fff'}
            className="w-[75%] rounded-md"
          />
          <Label>{shortString(evmAddress, 10)}</Label>
          <Button className="mt-3" onClick={() => copyTextToClipboard(evmAddress!)}>
            Copy Address
          </Button>
        </div>
      </BottomModal>
    </div>
  )
}
