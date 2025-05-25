import { useRouter } from 'next/router'
import { IconType } from 'react-icons'
import { GoGift } from 'react-icons/go'
import { LiaPhoneVolumeSolid } from 'react-icons/lia'
import { MdPermDataSetting } from 'react-icons/md'
import { TbMobiledata } from 'react-icons/tb'

import { TileSimple } from '@/src/components/TileSimple'

type IconItem = { title: string; onClick: VoidFunction; icon: IconType; desc?: string }
export default function Utilities() {
  const router = useRouter()

  const utilitiesBtn: IconItem[] = [
    {
      title: 'Save Only',
      desc: 'Zero risk, lock your funds for a desired amount of time. No interest. Get your money whenever you need it',
      icon: GoGift,
      onClick: () => {
        void router.push('/gifts')
      },
    },
    {
      title: 'Save & Earn',
      desc: 'Provide Liquidity and Earn interest as you save',
      icon: GoGift,
      onClick: () => {
        void router.push('/gifts')
      },
    },
    {
      title: 'Stake & Earn',
      desc: 'Funds deployed to high-risk yield.',
      icon: MdPermDataSetting,
      onClick: () => {
        void router.push('/topup/bundles')
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
  ]

  return (
    <div className="w-full">
      {utilitiesBtn.map((val, i) => {
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
    </div>
  )
}
