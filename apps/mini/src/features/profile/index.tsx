import { useUserInfo } from '@particle-network/auth-core-modal'
import { type User, initData, useSignal } from '@telegram-apps/sdk-react'
import Image from 'next/image'
import React, { useMemo } from 'react'
import { BsWallet } from 'react-icons/bs'
import { FaRegUser } from 'react-icons/fa6'
import { TbMail } from 'react-icons/tb'
import LiveLoader from 'src/Root/live-loader'
import { Label } from 'src/components/comps'
import { shortenAddress } from 'src/lib/config/addresses'
import { copyTextToClipboard, shortString } from 'src/lib/utils'

import { Container, MoreFeat } from './More'
import { Row } from './comps'
import { useAppContext } from '@/src/Root/TgContext'

const DImage = Image as any
function useInitData() {
  const initDataState = useSignal(initData.state)
  const userInfo = useMemo<User | undefined>(() => {
    return initDataState && initDataState.user ? initDataState.user : undefined
  }, [initDataState])
  return { userInfo }
}

export default function Profile() {
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
      <div className="w-full items-center justify-center flex flex-col mb-2">
        {userInfo.photoUrl && (
          <DImage
            className="mt-3 mb-2 h-[50px] w-[50px] rounded-full"
            src={userInfo.photoUrl}
            width={50}
            height={50}
            alt={userInfo.id.toString()}
            // placeholder="blur"
            unoptimized
          />
        )}

        <div className="w-full">
          <Container>
            <Label>User</Label>
            {userInfo.username && <Row text={`${userInfo.username}`} Icon={FaRegUser} />}
            {userInfo.firstName && (
              <Row text={`${userInfo.firstName}  ${userInfo.lastName}`} Icon={FaRegUser} />
            )}
            {userInfo.id && <Row text={`ID: ${userInfo.id}`} Icon={BsWallet} />}
            {particleUser.userInfo!.email && (
              <Row text={`${particleUser.userInfo!.email}`} Icon={TbMail} />
            )}
          </Container>
          <Container>
            <Label>Wallets</Label>
            {evmAddress && (
              <Row
                text={`EVM: ${shortenAddress(evmAddress, true)}`}
                Icon={BsWallet}
                onClick={() => copyText(evmAddress!)}
              />
            )}
            {solanaAddress && (
              <Row
                text={`Solana: ${shortString(solanaAddress, 7)}`}
                Icon={BsWallet}
                onClick={() => copyText(solanaAddress!)}
              />
            )}
          </Container>
          <MoreFeat />
        </div>
      </div>
    </LiveLoader>
  )
}
