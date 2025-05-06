import type { IconType } from 'react-icons'
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
    title: 'KYC',
    link: '/kyc',
    Icon: MdNotes,
  },
  // {
  //   title: 'P2P',
  //   link: '/ads',
  //   Icon: RiExchange2Fill,
  // },
  // {
  //   title: 'Swap',
  //   link: '/swap',
  //   Icon: IoSwapHorizontalOutline,
  // },
  // {
  //   title: 'KYC',
  //   link: '/profile',
  //   Icon: FaRegUser,
  // },
  // {
  //   title: 'Manage Ads',
  //   link: '/ads/manage',
  //   Icon: MdOutlineNoteAlt,
  // },
  // {
  //   title: 'Bank Account',
  //   link: '/bank',
  //   Icon: BsBank,
  // },
]
