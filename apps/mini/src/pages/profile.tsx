import { type User, initData, themeParams, useSignal } from '@telegram-apps/sdk-react'
import React, { useMemo } from 'react'
import { Button } from 'src/components/Button'
import { Card, Label } from 'src/components/comps'
import Wrapper from 'src/components/wrapper/Wrapper'

function useInitData() {
  const initDataState = useSignal(initData.state)
  const userInfo = useMemo<User | undefined>(() => {
    return initDataState && initDataState.user ? initDataState.user : undefined
  }, [initDataState])

  return { userInfo }
}

type IThemeVar = {
  subtitleTextColor: string
  sectionHeaderTextColor: string
  sectionSeparatorColor: string
  linkColor: string
  bgColor: string
  buttonColor: string
  accentTextColor: string
  buttonTextColor: string
  secondaryBgColor: string
  sectionBgColor: string
  bottomBarBgColor: string
  headerBgColor: string
  hintColor: string
  destructiveTextColor: string
}
export default function Page() {
  const { userInfo } = useInitData()
  const tp = useSignal(themeParams.state) as IThemeVar

  if (!userInfo) return <div>No user data found</div>
  return (
    <Wrapper hideBottomNav>
      <div className="w-full">
        {userInfo.username && (
          <>
            <Label>Username</Label>
            <Card>{userInfo.username}</Card>
          </>
        )}
        {userInfo.firstName && (
          <>
            <Label>First name</Label>
            <Card>{userInfo.firstName}</Card>
          </>
        )}
        {userInfo.lastName && (
          <>
            <Label>LastName</Label>
            <Card>{userInfo.lastName}</Card>
          </>
        )}
        {userInfo.lastName && (
          <>
            <Label>Telegram LastName</Label>
            <Card>{userInfo.lastName}</Card>
          </>
        )}
        {userInfo.languageCode && (
          <>
            <Label>Language</Label>
            <Card>{userInfo.languageCode}</Card>
          </>
        )}
        {userInfo.id && (
          <>
            <Label>User ID</Label>
            <Card>{userInfo.id}</Card>
          </>
        )}
        <Label>Wallet Address</Label>
        <Card>{'0x462E5F272B8431562811126779da6EcaE51A5B40'.slice(0, 10)}</Card>

        <div className="max-w-[400px] text-wrap break-words">
          <code className="text-wrap break-words">{JSON.stringify(tp)}</code>
        </div>
        <div className="mt-5 flex items-center justify-center w-full">
          <Button>Check</Button>
        </div>
      </div>
    </Wrapper>
  )
}
