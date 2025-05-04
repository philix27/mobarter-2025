import { ReactNode } from 'react'

import WrapperComp from './WrapperComps'

export default function WrapperMinipay(props: { children: ReactNode; hideBottomNav?: boolean }) {
  return <WrapperComp {...props}>{props.children}</WrapperComp>
}
