import { useRouter } from 'next/router'
import { ReactNode } from 'react'
import { IconType } from 'react-icons'
import { BsSend } from 'react-icons/bs'
import { FaTv } from 'react-icons/fa'
import { GoGift } from 'react-icons/go'
import { GrNotification } from 'react-icons/gr'
import { IoArrowDownOutline, IoArrowUpOutline } from 'react-icons/io5'
import { LiaPhoneVolumeSolid } from 'react-icons/lia'
import { LuSquareArrowOutUpRight } from 'react-icons/lu'
import { MdElectricalServices, MdNotes } from 'react-icons/md'
import { SiExpress } from 'react-icons/si'
import { SlWallet } from 'react-icons/sl'
import { TbMobiledata } from 'react-icons/tb'
import { toast } from 'sonner'

import { CarouselComp } from './Carousel'
import RoundIcon from './RoundIcon'
import UtilityBottomPopups from './UtilityPopups'
import { Label } from '@/src/components/comps'
import { AppStores } from '@/src/lib/zustand'

type IconItem = { title: string; onClick: VoidFunction; icon: IconType }
export default function Utilities() {
  const store = AppStores.useSettings()
  const router = useRouter()

  const icons: IconItem[] = [
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
      title: 'Xpay',
      icon: SiExpress,
      onClick: () => {
        void router.push('/pay')
      },
    },
    {
      title: 'Withdraw',
      icon: LuSquareArrowOutUpRight,
      onClick: () => {
        toast.info('Coming soon!')
      },
    },
    {
      title: 'Buy',
      icon: IoArrowDownOutline,
      onClick: () => {
        toast.info('Coming soon!')
      },
    },
    {
      title: 'Sell',
      icon: IoArrowUpOutline,
      onClick: () => {
        toast.info('Coming soon!')
      },
    },
  ]
  const utilitiesBtn: IconItem[] = [
    {
      title: 'Airtime',
      icon: LiaPhoneVolumeSolid,
      onClick: () => {
        void router.push('/topup-airtime')
      },
    },
    {
      title: 'Data Bundle',
      icon: TbMobiledata,
      onClick: () => {
        void router.push('/topup-data')
      },
    },
    {
      title: 'Gift Cards',
      icon: GoGift,
      onClick: () => {
        toast.info('Coming soon!')
      },
    },
    {
      title: 'Electricity',
      icon: MdElectricalServices,
      onClick: () => {
        toast.info('Coming soon!')
      },
    },
    {
      title: 'Go TV',
      icon: FaTv,
      onClick: () => {
        toast.info('Coming soon!')
      },
    },
  ]
  const othersBtn: IconItem[] = [
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
        toast.info('Coming soon!')
      },
    },
  ]
  return (
    <div className="w-full">
      <CarouselComp />
      <GridContainer title="Payments">
        {icons.map((val, i) => {
          return <RoundIcon key={i} Icon={val.icon} title={val.title} onClick={val.onClick} />
        })}
      </GridContainer>
      <GridContainer title="Utilities">
        {utilitiesBtn.map((val, i) => {
          return <RoundIcon key={i} Icon={val.icon} title={val.title} onClick={val.onClick} />
        })}
      </GridContainer>
      <GridContainer title="Others">
        {othersBtn.map((val, i) => {
          return <RoundIcon key={i} Icon={val.icon} title={val.title} onClick={val.onClick} />
        })}
      </GridContainer>
      <UtilityBottomPopups />
    </div>
  )
}

function GridContainer(params: { children: ReactNode; className?: string; title: string }) {
  return (
    <div className="mb-2">
      <Label className="mb-[3px] ml-1">{params.title}</Label>
      <div className="grid grid-cols-4 gap-y-4 w-full items-center justify-around  bg-card py-2 rounded-md">
        {params.children}
      </div>
    </div>
  )
}
