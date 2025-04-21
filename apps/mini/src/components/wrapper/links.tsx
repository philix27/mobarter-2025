import type { IconType } from 'react-icons'
import { CiWallet } from 'react-icons/ci'
import { FaRegUser } from 'react-icons/fa6'
import { IoSwapHorizontalOutline } from 'react-icons/io5'
import { MdNotes } from 'react-icons/md'
import { RiExchange2Fill } from 'react-icons/ri'

export const navLinks: { title: string; link: string; Icon: IconType }[] = [
  {
    title: 'Wallet',
    link: '/',
    Icon: CiWallet,
  },
  {
    title: 'Swap',
    link: '/swap',
    Icon: IoSwapHorizontalOutline,
  },
  {
    title: 'P2P',
    link: '/ads',
    Icon: RiExchange2Fill,
  },
  {
    title: 'Orders',
    link: '/orders',
    Icon: MdNotes,
  },
  {
    title: 'Profile',
    link: '/profile',
    Icon: FaRegUser,
  },
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
