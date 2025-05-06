import { ReactNode } from 'react'

import WrapperMinipay from './WrapperMinipay'
import WrapperTg from './WrapperTg'
import { AppStores } from '@/src/lib/zustand'

export default function Wrapper(props: { children: ReactNode; hideBottomNav?: boolean }) {
  const store = AppStores.useSettings()

  if (store.appEnv === 'MINIPAY') {
    return <WrapperMinipay hideBottomNav={props.hideBottomNav}> {props.children}</WrapperMinipay>
  }

  return <WrapperTg hideBottomNav={props.hideBottomNav}> {props.children}</WrapperTg>
}
