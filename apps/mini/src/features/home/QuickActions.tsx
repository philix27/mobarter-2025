import router from 'next/router'
import React from 'react'
import { BsSend } from 'react-icons/bs'
import { LuSquareArrowOutDownLeft, LuSquareArrowOutUpRight } from 'react-icons/lu'
import { SlWallet } from 'react-icons/sl'

import RoundIcon from '../utilities/RoundIcon'

import { AppStores } from '@/src/lib/zustand'

export default function QuickActions() {
  const store = AppStores.useSettings()
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
  // const getUIcons = () => {
  //   const list = icons
  //   if (store.countryIso === 'NG') {
  //     list.push({
  //       title: 'Xpay',
  //       icon: SiExpress,
  //       onClick: () => {
  //         void router.push('/pay')
  //       },
  //     })
  //     return list
  //   }
  //   return list
  // }
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
    </div>
  )
}
