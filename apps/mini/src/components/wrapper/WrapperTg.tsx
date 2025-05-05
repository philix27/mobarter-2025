import { ReactNode } from 'react'

import WrapperComp from './WrapperComps'
import { useInitUserToken } from '@/src/Root/providers/TgContext'

export default function WrapperTg({
  hideBottomNav,
  ...props
}: {
  children: ReactNode
  hideBottomNav?: boolean
}) {
  useInitUserToken()

  return <WrapperComp hideBottomNav={hideBottomNav}>{props.children}</WrapperComp>
}
