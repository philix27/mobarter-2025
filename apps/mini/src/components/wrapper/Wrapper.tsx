import { ReactNode } from 'react'

import WrapperMinipay from './WrapperMinipay'
import WrapperTg from './WrapperTg'
import { AppStores } from '@/src/lib/zustand'
import { useTgUi } from '@/src/hooks/useTgUI';

export default function Wrapper(props: { children: ReactNode; hideBottomNav?: boolean }) {
  const store = AppStores.useSettings()
  useTgUi(props.hideBottomNav)
  
  if (store.appEnv === 'MINIPAY') {
    return <WrapperMinipay hideBottomNav={props.hideBottomNav}> {props.children}</WrapperMinipay>
  }

  return <WrapperTg hideBottomNav={props.hideBottomNav}> {props.children}</WrapperTg>
}
