import { ReactNode } from 'react'

import WrapperComp from './WrapperComps'
import { useInitMinipayUser } from '@/src/Root/providers/Minipay'

export default function WrapperMinipay(props: { children: ReactNode; hideBottomNav?: boolean }) {
  useInitMinipayUser()
  return <WrapperComp {...props}>{props.children}</WrapperComp>
}
