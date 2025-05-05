import { backButton } from '@telegram-apps/sdk-react'
import * as tg from '@telegram-apps/sdk-react'
import { useRouter } from 'next/router'
import { useEffect } from 'react'

import { AppStores } from '../lib/zustand'

import { useThemeColor } from '@/src/styles/Color'

export const useTgUi = (hideBottomNav?: boolean) => {
  const store = AppStores.useSettings()
  const theme = useThemeColor()
  const router = useRouter()
  useEffect(() => {
    // if (store.appEnv !== 'MINIPAY') {
    tg.setMiniAppBackgroundColor(theme.bg as any)
    tg.setMiniAppBottomBarColor(theme.bg as any)
    tg.setMiniAppHeaderColor(theme.bg as any)
    // }
  }, [store.appEnv, theme.bg])
  useEffect(() => {
    // if (store.appEnv !== 'MINIPAY') {
    if (hideBottomNav) {
      backButton.show()
    } else {
      backButton.hide()
    }
    // }
  }, [hideBottomNav, store.appEnv])

  useEffect(() => {
    // if (store.appEnv !== 'MINIPAY') {
    return backButton.onClick(() => {
      router.back()
    })
    // }
  }, [router, store.appEnv])
}
