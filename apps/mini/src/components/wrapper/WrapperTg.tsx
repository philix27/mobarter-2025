import { ReactNode } from 'react'

import WrapperComp from './WrapperComps'
import { useInitUserToken } from '@/src/Root/providers/TgContext'
import { useTgUi } from '@/src/hooks/useTgUI'

export default function WrapperTg({
  hideBottomNav,
  ...props
}: {
  children: ReactNode
  hideBottomNav?: boolean
}) {
  useInitUserToken()

  useTgUi(hideBottomNav)
  return <WrapperComp hideBottomNav={hideBottomNav}>{props.children}</WrapperComp>
}
