import { useRouter } from 'next/router'
import { IconType } from 'react-icons'
import { BsSend } from 'react-icons/bs'
import { GrNotification } from 'react-icons/gr'
import { IoSwapHorizontalOutline } from 'react-icons/io5'
import { LiaPhoneVolumeSolid } from 'react-icons/lia'
import { MdNotes } from 'react-icons/md'
import { SiExpress } from 'react-icons/si'
import { SlWallet } from 'react-icons/sl'

import RoundIcon from './RoundIcon'
import { AppStores } from '@/src/lib/zustand'

export default function Utilities(props: { length?: number }) {
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
      title: 'Airtime',
      icon: LiaPhoneVolumeSolid,
      onClick: () => {
        store.update({ homeBtmSheet: 'AIRTIME' })
      },
    },
    {
      title: 'Xpay',
      icon: SiExpress,
      onClick: () => {
        store.update({ homeBtmSheet: 'SEND_TO_BANK' })
      },
    },
    {
      title: 'Withdraw',
      icon: IoSwapHorizontalOutline,
      onClick: () => {
        void router.push('/ads')
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
        {props.length
          ? icons.slice(0, props.length).map((val, i) => {
              return <RoundIcon key={i} Icon={val.icon} title={val.title} onClick={val.onClick} />
            })
          : icons.map((val, i) => {
              return <RoundIcon key={i} Icon={val.icon} title={val.title} onClick={val.onClick} />
            })}
      </div>
    </>
  )
}
