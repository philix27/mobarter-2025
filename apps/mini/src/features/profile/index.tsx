import { useUserInfo } from '@particle-network/auth-core-modal'
import { type User, initData, useSignal } from '@telegram-apps/sdk-react'
import Image from 'next/image'
import React, { useMemo } from 'react'
import { useAppContext } from 'src/Root/context'
import LiveLoader from 'src/Root/live-loader'
import { Tab } from 'src/components/Tab'
import { Card, Label } from 'src/components/comps'
import { shortenAddress } from 'src/lib/config/addresses'
import { copyTextToClipboard, shortString } from 'src/lib/utils'
import { AppStores } from 'src/lib/zustand'

import { MoreFeat } from './More'

function useInitData() {
  const initDataState = useSignal(initData.state)
  const userInfo = useMemo<User | undefined>(() => {
    return initDataState && initDataState.user ? initDataState.user : undefined
  }, [initDataState])
  return { userInfo }
}

export default function Profile() {
  const store = AppStores.useSettings()
  const { userInfo } = useInitData()
  const particleUser = useUserInfo()
  const { evmAddress, solanaAddress } = useAppContext()

  const copyText = (text: string) => {
    // eslint-disable-next-line @typescript-eslint/no-floating-promises
    copyTextToClipboard(text)
  }

  if (!userInfo) return <div>No user data found</div>

  return (
    <LiveLoader>
      <div className="w-full">
        <div className="w-full items-center justify-center flex flex-col">
          {userInfo.photoUrl && (
            <Image
              className="mt-3 mb-2 h-[50px] w-[50px] rounded-full"
              src={userInfo.photoUrl}
              width={50}
              height={50}
              alt={userInfo.id.toString()}
              // placeholder="blur"
              unoptimized
            />
          )}
          <div className="my-1" />
          <Tab
            data={[
              {
                title: 'INFO',
                isActive: store.profileTabs === 'INFO',
                onClick: () => {
                  store.update({
                    profileTabs: 'INFO',
                  })
                },
              },
              {
                title: 'ACTIONS',
                isActive: store.profileTabs === 'ACTIONS',
                onClick: () => {
                  store.update({
                    profileTabs: 'ACTIONS',
                  })
                },
              },
            ]}
          />
        </div>

        {store.profileTabs === 'ACTIONS' ? (
          <MoreFeat />
        ) : (
          <>
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
            {particleUser.userInfo!.email && (
              <>
                <Label>Email</Label>
                <Card> {particleUser.userInfo!.email}</Card>
              </>
            )}
            {evmAddress && (
              <>
                <Label>EVM Wallet</Label>
                <Card onClick={() => copyText(evmAddress!)}> {shortenAddress(evmAddress)}</Card>
              </>
            )}
            {solanaAddress && (
              <>
                <Label>Solana Wallet</Label>
                <Card onClick={() => copyText(solanaAddress)}>{shortString(solanaAddress, 7)}</Card>
              </>
            )}
          </>
        )}
      </div>
    </LiveLoader>
  )
}
