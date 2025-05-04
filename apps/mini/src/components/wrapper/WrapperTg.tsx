import { backButton } from '@telegram-apps/sdk-react'
import * as tg from '@telegram-apps/sdk-react'
import { useRouter } from 'next/router'
import { ReactNode, useEffect } from 'react'

import WrapperComp from './WrapperComps'
import { useInitUserToken } from '@/src/Root/providers/TgContext'
import { useThemeColor } from '@/src/styles/Color'

export default function Wrapper({
  hideBottomNav,
  ...props
}: {
  children: ReactNode
  hideBottomNav?: boolean
}) {
  const router = useRouter()

  const theme = useThemeColor()
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

  useInitUserToken()

  return <WrapperComp {...props}>{props.children}</WrapperComp>
}
