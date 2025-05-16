import { useRouter } from 'next/router'
import { ReactNode } from 'react'
import { IconType } from 'react-icons'
import { BsSend } from 'react-icons/bs'
import { FaTv } from 'react-icons/fa'
import { GoGift } from 'react-icons/go'
import { GrNotification } from 'react-icons/gr'
import { LiaPhoneVolumeSolid } from 'react-icons/lia'
import { LuSquareArrowOutUpRight } from 'react-icons/lu'
import { MdElectricalServices, MdNotes, MdPermDataSetting } from 'react-icons/md'
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
      title: 'Withdraw',
      icon: LuSquareArrowOutUpRight,
      onClick: () => {
        toast.info('Coming soon!')
      },
    },
    // {
    //   title: 'Buy',
    //   icon: IoArrowDownOutline,
    //   onClick: () => {
    //     toast.info('Coming soon!')
    //   },
    // },
    // {
    //   title: 'Sell',
    //   icon: IoArrowUpOutline,
    //   onClick: () => {
    //     toast.info('Coming soon!')
    //   },
    // },
  ]
  const utilitiesBtn: IconItem[] = [
    {
      title: 'Airtime',
      icon: LiaPhoneVolumeSolid,
      onClick: () => {
        void router.push('/topup/airtime')
      },
    },
    {
      title: 'Data',
      icon: TbMobiledata,
      onClick: () => {
        void router.push('/topup/data')
      },
    },
    {
      title: 'Bundles',
      icon: MdPermDataSetting,
      onClick: () => {
        void router.push('/topup/bundles')
      },
    },

    {
      title: 'Gift Cards',
      icon: GoGift,
      onClick: () => {
        void router.push('/gifts')
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
    {
      title: 'Recurring',
      icon: GrNotification,
      onClick: () => {
        toast.info('Coming soon!')
      },
    },
    {
      title: 'Stream',
      icon: GrNotification,
      onClick: () => {
        toast.info('Coming soon!')
      },
    },
  ]

  const getUtils = () => {
    const list = utilitiesBtn
    if (store.countryIso === 'NG') {
      list.push(
        {
          title: 'Electricity',
          icon: MdElectricalServices,
          onClick: () => {
            void router.push('/bills/electricity')
          },
        },
        {
          title: 'TV',
          icon: FaTv,
          onClick: () => {
            toast.info('Coming soon!')
          },
        }
      )
      return list
    }
    return list
  }
  const getUIcons = () => {
    const list = icons
    if (store.countryIso === 'NG') {
      list.push({
        title: 'Xpay',
        icon: SiExpress,
        onClick: () => {
          void router.push('/pay')
        },
      })
      return list
    }
    return list
  }

  return (
    <div className="w-full">
      <CarouselComp />
      <GridContainer title="Payments">
        {getUIcons().map((val, i) => {
          return <RoundIcon key={i} Icon={val.icon} title={val.title} onClick={val.onClick} />
        })}
      </GridContainer>
      <GridContainer title="Utilities">
        {getUtils().map((val, i) => {
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
