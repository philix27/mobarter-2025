/* eslint-disable @next/next/no-img-element */
import { useRouter } from 'next/router'
import { ReactNode } from 'react'
import { IconType } from 'react-icons'
import { GoGift } from 'react-icons/go'
import { LiaPhoneVolumeSolid } from 'react-icons/lia'
import { MdPermDataSetting } from 'react-icons/md'
import { cn } from 'src/lib/utils'

type IconItem = {
  title: string
  onClick: VoidFunction
  onClick2?: VoidFunction
  icon: IconType
  desc?: string
  text1: string
  text2: string
}
export default function SaveComp() {
  const router = useRouter()

  const utilitiesBtn: IconItem[] = [
    {
      title: 'Lock',
      desc: 'Zero risk, lock your funds for a desired amount of time. No interest. Get your money whenever you need it',
      icon: GoGift,
      onClick: () => {
        void router.push('/gifts')
      },
      text1: 'Create',
      text2: 'View',
    },
    {
      title: 'Save & Earn',
      desc: 'Provide Liquidity and Earn interest as you save',
      icon: GoGift,
      onClick: () => {
        void router.push('/gifts')
      },
      text1: 'Create',
      text2: 'View',
    },
    {
      title: 'Stake',
      desc: 'Funds deployed to high-risk yield.',
      icon: MdPermDataSetting,
      onClick: () => {
        void router.push('/topup/bundles')
      },
      text1: 'Create',
      text2: 'View',
    },
    {
      title: 'Recurring',
      desc: 'Set recurring payments to friends and loved ones',
      icon: LiaPhoneVolumeSolid,
      onClick: () => {
        void router.push('/topup/airtime')
      },
      text1: 'Create',
      text2: 'View',
    },
    // {
    //   title: 'Stream',
    //   icon: TbMobiledata,
    //   onClick: () => {
    //     void router.push('/topup/data')
    //   },
    // },
  ]

  return (
    <div className="w-full">
      {utilitiesBtn.map((val, i) => {
        return (
          <TileCard
            key={i}
            title={val.title}
            onClick={val.onClick}
            onClick2={val.onClick2}
            icon={val.icon}
            desc={val.desc}
            text1={val.text1}
            text2={val.text2}
          />
        )
      })}
    </div>
  )
}

export function TileCard(
  params: IconItem & {
    className?: string
  }
) {
  const Icon = params.icon as any
  return (
    <div
      className={cn(
        'flex flex-col items-center w-full bg-card px-0 rounded-[15px] mb-3 p-1',
        params.className
      )}
    >
      <div className="px-2 w-full py-2">
        <div className="w-full flex items-center mb-1">
          <div className="mr-3 size-[35px] rounded-full bg-background flex items-center justify-center">
            <Icon className="text-muted" size={20} />
          </div>
          <p className="font-semibold text-[14px]"> {params.title}</p>
        </div>

        {params.desc && <p className="text-muted text-[12px] font-light">{params.desc}</p>}
      </div>
      <div
        className={cn(
          'w-full flex items-center justify-around bg-background rounded-t-4 rounded-full'
        )}
      >
        <Btn onClick={params.onClick}>{params.text1}</Btn>
        <Btn onClick={params.onClick2}>{params.text2}</Btn>
      </div>
    </div>
  )
}

const Btn = (props: { children: ReactNode; onClick?: VoidFunction }) => {
  return (
    <div
      className="p-2 hover:bg-card hover:text-primary-foreground w-full flex items-center justify-center rounded-full"
      onClick={props.onClick}
    >
      <p className="text-primary text-[12px] font-semibold">{props.children}</p>
    </div>
  )
}
