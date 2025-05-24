import router from 'next/router'
import React from 'react'
import { BsSend } from 'react-icons/bs'
import { LuSquareArrowOutDownLeft, LuSquareArrowOutUpRight } from 'react-icons/lu'
import { SlWallet } from 'react-icons/sl'
import QRCode from 'react-qr-code'
import { Button } from 'src/components/Button'
import { Label } from 'src/components/comps'
import { copyTextToClipboard, shortString } from 'src/lib/utils'
import { AppStores } from 'src/lib/zustand'

import SendCrypto from '../others/SendCrypto'
import RoundIcon from '../utilities/RoundIcon'

import { useAppContext } from '@/src/Root/TgContext'
import BottomModal from '@/src/components/BottomModal'

export default function QuickActions() {
  const store = AppStores.useSettings()
  const currentTab = store.homeBtmSheet
  const { evmAddress } = useAppContext()
  const icons = [
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
      title: 'Sell',
      icon: LuSquareArrowOutUpRight,
      onClick: () => {
        void router.push('/orders/sell')
      },
    },
    {
      title: 'Buy',
      icon: LuSquareArrowOutDownLeft,
      onClick: () => {
        void router.push('/orders/buy')
      },
    },
  ]

  return (
    <div className="flex items-center justify-around w-full py-2 mt-4">
      {icons.map((val, i) => {
        return (
          <RoundIcon
            key={i}
            Icon={val.icon}
            title={val.title}
            onClick={val.onClick}
            bgColor="bg-primary"
          />
        )
      })}

      <BottomModal
        title="Wallet address"
        showSheet={currentTab === 'WALLET'}
        onClose={() => {
          store.update({ homeBtmSheet: undefined })
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

      <BottomModal
        title="Send crypto"
        showSheet={currentTab === 'SEND_CRYPTO'}
        onClose={() => {
          store.update({ homeBtmSheet: undefined })
        }}
      >
        <SendCrypto />
      </BottomModal>
    </div>
  )
}
