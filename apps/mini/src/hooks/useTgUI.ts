import { backButton } from '@telegram-apps/sdk-react'
import * as tg from '@telegram-apps/sdk-react'
import { useRouter } from 'next/router'
import { useEffect } from 'react'

import { useThemeColor } from '@/src/styles/Color'

export const useTgUi = (hideBottomNav?: boolean) => {
  const theme = useThemeColor()
  const router = useRouter()
  useEffect(() => {
    tg.setMiniAppBackgroundColor(theme.bg as any)
    tg.setMiniAppBottomBarColor(theme.bg as any)
    tg.setMiniAppHeaderColor(theme.bg as any)
  }, [theme.bg])

  useEffect(() => {
    if (hideBottomNav) {
      backButton.show()
    } else {
      backButton.hide()
    }
  }, [hideBottomNav])

  useEffect(() => {
    return backButton.onClick(() => {
      router.back()
    })
  }, [router])
}
