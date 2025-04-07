import { useRouter } from 'next/router'

import HomeNav from '../topNavs/HomeNav'
import OrderNav from '../topNavs/OrdersNav'
import P2PNav from '../topNavs/P2PNav'

export default function TopNav(props: { showBack?: boolean }) {
  const router = useRouter()
  switch (router.pathname) {
    case '/':
      return <HomeNav {...props} />
    case '/ads':
      return <P2PNav {...props} />
    case '/orders':
      return <OrderNav {...props} />

    default:
      return <HomeNav {...props} />
  }
}
