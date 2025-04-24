import { useUserInfo } from '@particle-network/auth-core-modal'
import { type User, initData, useSignal } from '@telegram-apps/sdk-react'
import { Container } from 'lucide-react'
import Image from 'next/image'
import React, { useMemo } from 'react'
import { BsWallet } from 'react-icons/bs'
import { FaRegUser } from 'react-icons/fa6'
import { TbMail } from 'react-icons/tb'
import { useAppContext } from 'src/Root/context'
import LiveLoader from 'src/Root/live-loader'
import { Label } from 'src/components/comps'
import { shortenAddress } from 'src/lib/config/addresses'
import { copyTextToClipboard } from 'src/lib/utils'
import { AppStores } from 'src/lib/zustand'

import BankAccount from '../bankAccount'

import { MoreFeat } from './More'
import { Row } from './comps'

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
          {/* <Tab
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
              {
                title: 'BANK',
                isActive: store.profileTabs === 'BANK',
                onClick: () => {
                  store.update({
                    profileTabs: 'BANK',
                  })
                },
              },
            ]}
          /> */}
        </div>

        {store.profileTabs === 'BANK' && <BankAccount />}
        <Container>
          <Label>User</Label>
          {userInfo.username && <Row text={`${userInfo.username}`} Icon={FaRegUser} />}
          {userInfo.firstName && (
            <Row text={`${userInfo.firstName} - ${userInfo.lastName}`} Icon={FaRegUser} />
          )}
          {userInfo.id && <Row text={`ID: ${userInfo.id}`} Icon={BsWallet} />}
          {particleUser.userInfo!.email && (
            <Row text={`${particleUser.userInfo!.email}`} Icon={TbMail} />
          )}
          {evmAddress && (
            <Row
              text={`EVM: ${shortenAddress(evmAddress, true)}`}
              Icon={BsWallet}
              onClick={() => copyText(evmAddress!)}
            />
          )}
          {solanaAddress && (
            <Row
              text={`Solana: ${shortenAddress(solanaAddress, true)}`}
              Icon={BsWallet}
              onClick={() => copyText(solanaAddress!)}
            />
          )}
        </Container>
        <MoreFeat />
      </div>
    </LiveLoader>
  )
}
