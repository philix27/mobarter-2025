import { type User, initData, useSignal } from '@telegram-apps/sdk-react'
import Image from 'next/image'
import React, { useMemo } from 'react'
import { Card, Label } from 'src/components/comps'

import { MoreFeat } from './More'

function useInitData() {
  const initDataState = useSignal(initData.state)
  const userInfo = useMemo<User | undefined>(() => {
    return initDataState && initDataState.user ? initDataState.user : undefined
  }, [initDataState])
  return { userInfo }
}

export default function Profile() {
  const { userInfo } = useInitData()

  if (!userInfo) return <div>No user data found</div>
  return (
    <div className="w-full">
      {userInfo.photoUrl && (
        <div className="w-full items-center justify-center flex">
          <Image
            className="mt-3 mb-2 h-[50px] w-[50px] rounded-full"
            src={userInfo.photoUrl}
            width={50}
            height={50}
            alt={userInfo.id.toString()}
            // placeholder="blur"
            unoptimized
          />{' '}
        </div>
      )}

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
      <MoreFeat />
    </div>
  )
}
