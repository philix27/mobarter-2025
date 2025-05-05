import { backButton } from '@telegram-apps/sdk-react'
import * as tg from '@telegram-apps/sdk-react'
import { useRouter } from 'next/router'
import { ReactNode, useEffect } from 'react'

import WrapperMinipay from './WrapperMinipay'
import WrapperTg from './WrapperTg'
import { AppStores } from '@/src/lib/zustand'
import { useThemeColor } from '@/src/styles/Color'

export default function Wrapper(props: { children: ReactNode; hideBottomNav?: boolean }) {
  const store = AppStores.useSettings()
  const router = useRouter()

  const theme = useThemeColor()
  useEffect(() => {
    if (store.appEnv !== 'MINIPAY') {
      tg.setMiniAppBackgroundColor(theme.bg as any)
      tg.setMiniAppBottomBarColor(theme.bg as any)
      tg.setMiniAppHeaderColor(theme.bg as any)
    }
  }, [store.appEnv, theme.bg])

  useEffect(() => {
    if (store.appEnv !== 'MINIPAY') {
      if (props.hideBottomNav) {
        backButton.show()
      } else {
        backButton.hide()
      }
    }
  }, [props.hideBottomNav, store.appEnv])

  useEffect(() => {
    if (store.appEnv !== 'MINIPAY') {
      backButton.onClick(() => {
        router.back()
      })
    }
  }, [router, store.appEnv])

  if (store.appEnv === 'MINIPAY') {
    return <WrapperMinipay hideBottomNav={props.hideBottomNav}> {props.children}</WrapperMinipay>
  }
  return <WrapperTg hideBottomNav={props.hideBottomNav}> {props.children}</WrapperTg>
}
