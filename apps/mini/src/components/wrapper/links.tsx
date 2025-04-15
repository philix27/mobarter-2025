import type { IconType } from 'react-icons';
import { BsBank } from 'react-icons/bs';
import { CiWallet } from 'react-icons/ci';
import { FaRegUser } from 'react-icons/fa6';
import { IoSettingsOutline } from "react-icons/io5";
import { MdNotes, MdOutlineNoteAlt } from 'react-icons/md';
import { RiExchange2Fill } from 'react-icons/ri';


export const navLinks: { title: string; link: string; Icon: IconType }[] = [
  {
    title: 'Wallet',
    link: '/',
    Icon: CiWallet,
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
    title: 'Settings',
    link: '/profile',
    Icon: IoSettingsOutline,
  },
  {
    title: 'KYC',
    link: '/profile',
    Icon: FaRegUser,
  },
  {
    title: 'Manage Ads',
    link: '/ads/manage',
    Icon: MdOutlineNoteAlt,
  },
  {
    title: 'Bank Account',
    link: '/bank',
    Icon: BsBank,
  },
]