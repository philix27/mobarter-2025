import { backButton } from '@telegram-apps/sdk-react'
import * as tg from '@telegram-apps/sdk-react'
import { useRouter } from 'next/router'
import { ReactNode, useEffect } from 'react'
import { useInitUserToken } from 'src/Root/context'

import BottomNav from './BottomNav'
import Drawer from './Drawer'
import Sidebar from './Sidebar'
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

  // useInitUserToken()

  return (
    <div className="w-screen bg-background h-screen p-0 m-0">
      {/* <TopNav showBack={props.hideBottomNav} /> */}
      <div className="flex w-full bg-background">
        <Sidebar />
        {/* mt-[50px] md:mt-[70px] mb-[70px] md:mb-0 md:ml-[100px]  */}
        <div
          className={`
        mt-[5px] md:mt-[70px] mb-[90px] md:mb-0 md:ml-[100px] 
        w-full h-full
        px-4 py-0 md:py-2
        flex items-center justify-center
        bg-background`}
        >
          <div className="md:max-w-[840px] w-full">{props.children}</div>
        </div>
      </div>
      {hideBottomNav || <BottomNav />}
      <Drawer />
    </div>
  )
}
