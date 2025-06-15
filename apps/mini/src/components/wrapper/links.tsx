import type { IconType } from 'react-icons'
import { BsBank } from 'react-icons/bs'
import { CiWallet } from 'react-icons/ci'
import { FaRegUser } from 'react-icons/fa6'
import { GiTwoCoins } from 'react-icons/gi'
import { MdNotes } from 'react-icons/md'
import { RiAppsFill } from 'react-icons/ri'

export const navLinks: { title: string; link: string; Icon: IconType }[] = [
  {
    title: 'Wallet',
    link: '/tg',
    Icon: CiWallet,
  },
  {
    title: 'Payments',
    link: '/apps',
    Icon: RiAppsFill,
  },
  // {
  //   title: 'Savings',
  //   link: '/savings',
  //   Icon: GiTwoCoins,
  // },
  {
    title: 'Profile',
    link: '/profile',
    Icon: FaRegUser,
  },
  {
    title: 'Orders',
    link: '/orders',
    Icon: MdNotes,
  },
  {
    title: 'KYC Verification',
    link: '/kyc',
    Icon: MdNotes,
  },
  {
    title: 'Bank Accounts',
    link: '/bank-accounts',
    Icon: BsBank,
  },
]
