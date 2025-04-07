import type { IconType } from 'react-icons';
import { BsBank } from 'react-icons/bs';
import { HiHome } from 'react-icons/hi';
import { MdNotes, MdOutlineNoteAlt } from 'react-icons/md';
import { RiExchange2Fill, RiUserFill } from 'react-icons/ri';


export const navLinks: { title: string; link: string; Icon: IconType }[] = [
  {
    title: 'Home',
    link: '/',
    Icon: HiHome,
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
    title: 'Profile & KYC',
    link: '/profile',
    Icon: RiUserFill,
  },
  {
    title: 'Manage Ads',
    link: '/ads/manage',
    Icon: MdOutlineNoteAlt,
  },
  {
    title: 'Bank Account',
    link: '/orders',
    Icon: BsBank,
  },
]