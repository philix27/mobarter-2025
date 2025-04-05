import { Book, Home, Info } from 'lucide-react'

export const navLinks: { title: string; link: string; Icon: JSX.Element }[] = [
  {
    title: 'Home',
    link: '/',
    Icon: <Home size={20} />,
  },

  {
    title: 'P2P',
    link: '/ads',
    Icon: <Book size={20} />,
  },

  {
    title: 'Orders',
    link: '/orders',
    Icon: <Info size={20} />,
  },
]
