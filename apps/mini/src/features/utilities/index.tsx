import { useRouter } from 'next/router'
import { ReactNode } from 'react'
import { IconType } from 'react-icons'
import { FaTv } from 'react-icons/fa'
import { GoGift } from 'react-icons/go'
import { LiaPhoneVolumeSolid } from 'react-icons/lia'
import { MdElectricalServices, MdPermDataSetting } from 'react-icons/md'
import { TbMobiledata } from 'react-icons/tb'

import { CarouselComp } from './Carousel'
import UtilityBottomPopups from './UtilityPopups'
import { TileSimple } from '@/src/components/TileSimple'
import { Label } from '@/src/components/comps'
import { AppStores } from '@/src/lib/zustand'

type IconItem = {
  title: string
  onClick: VoidFunction
  icon: IconType
  desc?: string
  imgUrl?: string
}
export default function Utilities() {
  const store = AppStores.useSettings()
  const router = useRouter()

  const utilitiesBtn: IconItem[] = [
    {
      title: 'Airtime',
      desc: 'Topup and buy airtime',
      icon: LiaPhoneVolumeSolid,
      onClick: () => {
        void router.push('/topup/airtime')
      },
    },
    {
      title: 'Data',
      desc: 'Purchase data plans',
      icon: TbMobiledata,
      onClick: () => {
        void router.push('/topup/data')
      },
    },
    {
      title: 'Bundles',
      desc: 'Data Bundles at cheap rate',
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
          title: 'Cable TV',
          desc: 'Starnet, GoTv and MyTV',
          icon: FaTv,
          onClick: () => {
            void router.push('/bills/cable')
          },
        }
      )
      return list
    }
    return list
  }

  return (
    <div className="w-full">
      <CarouselComp />
      {getUtils().map((val, i) => {
        return (
          <TileSimple
            key={i}
            title={val.title}
            onClick={val.onClick}
            icon={val.icon}
            desc={val.desc}
          />
        )
      })}

      <UtilityBottomPopups />
    </div>
  )
}

export function GridContainer(params: { children: ReactNode; className?: string; title?: string }) {
  return (
    <div className="mb-2">
      {params.title && <Label className="mb-[3px] ml-1">{params.title}</Label>}
      <div className="grid grid-cols-4 gap-y-4 w-full items-center justify-around  bg-card py-2 rounded-md">
        {params.children}
      </div>
    </div>
  )
}
