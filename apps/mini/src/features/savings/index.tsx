import { useRouter } from 'next/router'
import { IconType } from 'react-icons'
import { GoGift } from 'react-icons/go'
import { LiaPhoneVolumeSolid } from 'react-icons/lia'
import { MdPermDataSetting } from 'react-icons/md'
import { TbMobiledata } from 'react-icons/tb'

import { CarouselComp } from './Carousel'
import UtilityBottomPopups from './UtilityPopups'
import { TileSimple } from '@/src/components/TileSimple'
import { AppStores } from '@/src/lib/zustand'

type IconItem = { title: string; onClick: VoidFunction; icon: IconType; desc?: string }
export default function Utilities() {
  const store = AppStores.useSettings()
  const router = useRouter()

  const utilitiesBtn: IconItem[] = [
    {
      title: 'Lock',
      icon: GoGift,
      onClick: () => {
        void router.push('/gifts')
      },
    },
    {
      title: 'Recurring',
      icon: LiaPhoneVolumeSolid,
      onClick: () => {
        void router.push('/topup/airtime')
      },
    },
    {
      title: 'Stream',
      icon: TbMobiledata,
      onClick: () => {
        void router.push('/topup/data')
      },
    },
    {
      title: 'Stake',
      icon: MdPermDataSetting,
      onClick: () => {
        void router.push('/topup/bundles')
      },
    },
  ]

  const getUtils = () => {
    const list = utilitiesBtn
    if (store.countryIso === 'NG') {
      // list.push(
      //   {
      //     title: 'Electricity',
      //     icon: MdElectricalServices,
      //     onClick: () => {
      //       void router.push('/bills/electricity')
      //     },
      //   },
      //   {
      //     title: 'TV',
      //     icon: FaTv,
      //     onClick: () => {
      //       toast.info('Coming soon!')
      //     },
      //   }
      // )
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
      {/* <GridContainer title="Payments">
        {getUtils().map((val, i) => {
          return <RoundIcon key={i} Icon={val.icon} title={val.title} onClick={val.onClick} />
        })}
      </GridContainer> */}
      <UtilityBottomPopups />
    </div>
  )
}
