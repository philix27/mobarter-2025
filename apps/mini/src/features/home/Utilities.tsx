import React, { useState } from 'react'
import { IconType } from 'react-icons'
import { CiBank } from 'react-icons/ci'
import { GrGift } from 'react-icons/gr'
import { LiaPhoneVolumeSolid } from 'react-icons/lia'
import BottomModal from 'src/components/BottomModal'

import Airtime from '../airtime'
import SendToBank from '../send/sendToBank'

import { HomeRow } from './comps'

export default function Utilities() {
  const [btmSheet, setBtmSheet] = useState<'AIRTIME' | 'GIFT_CARD' | 'SEND_TO_BANK' | undefined>(
    undefined
  )
  const list: { title: string; onClick?: VoidFunction; desc: string; icon: IconType }[] = [
    {
      title: 'Airtime',
      desc: 'Purchase airtime with cUSD',
      icon: LiaPhoneVolumeSolid,
      onClick: () => {
        setBtmSheet('AIRTIME')
      },
    },
    {
      title: 'Send to bank accounts',
      desc: 'Settle local fiat transactions',
      icon: CiBank,
      onClick: () => {
        setBtmSheet('SEND_TO_BANK')
      },
    },
    { title: 'Gift Cards', desc: 'Purchase cards with cUSD', icon: GrGift },
  ]
  return (
    <div className="w-full">
      {list.map((val, i) => {
        return (
          <HomeRow
            key={i}
            onClick={val.onClick}
            title={val.title}
            desc={val.desc}
            icon={val.icon}
          />
        )
      })}
      <BottomModal
        title="Purchase Airtime"
        showSheet={btmSheet === 'AIRTIME'}
        onClose={() => {
          setBtmSheet(undefined)
        }}
      >
        <Airtime />
      </BottomModal>
      <BottomModal
        title="Send to Bank Account"
        showSheet={btmSheet === 'SEND_TO_BANK'}
        onClose={() => {
          setBtmSheet(undefined)
        }}
      >
        <SendToBank />
      </BottomModal>
    </div>
  )
}
