import React, { useState } from 'react'
import { IconType } from 'react-icons'
import { GrGift } from 'react-icons/gr'
import { LiaPhoneVolumeSolid } from 'react-icons/lia'
import BottomModal from 'src/components/BottomModal'

import Airtime from '../airtime'

export default function Utilities() {
  const [btmSheet, setBtmSheet] = useState<'AIRTIME' | 'GIFT_CARD' | undefined>(undefined)
  const list: { title: string; onClick?: VoidFunction; desc: string; icon: IconType }[] = [
    {
      title: 'Airtime',
      desc: 'Purchase airtime with cUSD',
      icon: LiaPhoneVolumeSolid,
      onClick: () => {
        setBtmSheet('AIRTIME')
      },
    },
    { title: 'Gift Cards', desc: 'Purchase cards with cUSD', icon: GrGift },
  ]
  return (
    <div className="w-full">
      {list.map((val, i) => {
        const Icon = val.icon as any
        return (
          <div
            key={i}
            className="flex items-center w-full bg-card px-2 py-2 mb-1 rounded-md"
            onClick={val.onClick}
          >
            <div className="mr-3 size-[35px] rounded-full bg-background flex items-center justify-center">
              <Icon className="text-primary" />
            </div>
            <div>
              <p className="font-semibold text-[14px]"> {val.title}</p>
              <p className="text-muted text-[11px] font-light">{val.desc}</p>
            </div>
          </div>
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
    </div>
  )
}
