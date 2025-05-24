import type { IconType } from 'react-icons'
import { BsBank } from 'react-icons/bs'
import { CiWallet } from 'react-icons/ci'
import { FaRegUser } from 'react-icons/fa6'
import { GoHistory } from 'react-icons/go'
import { MdNotes } from 'react-icons/md'
import { RiAppsFill } from 'react-icons/ri'

export const navLinks: { title: string; link: string; Icon: IconType }[] = [
  {
    title: 'Wallet',
    link: '/tg',
    Icon: CiWallet,
  },
  {
    title: 'Apps',
    link: '/apps',
    Icon: RiAppsFill,
  },
  {
    title: 'History',
    link: '/history',
    Icon: GoHistory,
  },

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
  // {
  //   title: 'Swap',
  //   link: '/swap',
  //   Icon: IoSwapHorizontalOutline,
  // },
  {
    title: 'Bank Accounts',
    link: '/bank-accounts',
    Icon: BsBank,
  },
]
