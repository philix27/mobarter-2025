import { useRouter } from 'next/router';
import React, { useState } from 'react';
import { IconType } from 'react-icons';
import { GrNotification } from 'react-icons/gr';
import { IoSwapHorizontalOutline } from 'react-icons/io5';
import { LiaPhoneVolumeSolid } from 'react-icons/lia';
import { MdNotes } from 'react-icons/md';
import { SiExpress } from "react-icons/si";
import BottomModal from 'src/components/BottomModal';



import Airtime from '../others/Airtime';
import SendToBank from '../others/SendToBank';



import RoundIcon from './comps';
import { AppStores } from '@/src/lib/zustand';


export default function Utilities() {
  const store = AppStores.useSettings()
  const router = useRouter()
  const [btmSheet, setBtmSheet] = useState<
    'AIRTIME' | 'GIFT_CARD' | 'SEND_TO_BANK' | 'FX_RATES' | undefined
  >(undefined)


  const icons: { title: string; onClick: VoidFunction; icon: IconType }[] = [
    {
      title: 'Airtime',
      icon: LiaPhoneVolumeSolid,
      onClick: () => {
        setBtmSheet('AIRTIME')
      },
    },
    {
      title: 'Xpay',
      icon: SiExpress,
      onClick: () => {
        setBtmSheet('SEND_TO_BANK')
      },
    },
    {
      title: 'Market',
      icon: IoSwapHorizontalOutline,
      onClick: () => {
        store.update({ homeBtmSheet: 'WITHDRAW' })
      },
    },
    {
      title: 'Orders',
      icon: MdNotes,
      onClick: () => {
        void router.push('/orders')
      },
    },
    {
      title: 'Notifications',
      icon: GrNotification,
      onClick: () => {
        return
      },
    },
  ]
  return (
    <>
      <div className="grid grid-cols-4 gap-y-4 w-full items-center justify-around mb-[20px]">
        {icons.map((val, i) => {
          return <RoundIcon key={i} Icon={val.icon} title={val.title} onClick={val.onClick} />
        })}
      </div>

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
    </>
  )
}