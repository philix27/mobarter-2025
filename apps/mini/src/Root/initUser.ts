import { useMutation } from '@apollo/client'
import { useEthereum } from '@particle-network/auth-core-modal'
import {
  Auth_TelegramLoginDocument,
  MutationAuth_LoginTelegramArgs,
  MutationResponse,
} from '@repo/api'
import { User, initData, useSignal } from '@telegram-apps/sdk-react'
import { useMemo } from 'react'
import { AppStores } from 'src/lib/zustand'

export function useInitUserToken() {
  const store = AppStores.useUser()
  const initDataState = useSignal(initData.state)
  const { address } = useEthereum()
  const userInfo = useMemo<User | undefined>(() => {
    return initDataState && initDataState.user ? initDataState.user : undefined
  }, [initDataState])

  const [mutate] = useMutation<
    MutationResponse<'auth_loginTelegram'>,
    MutationAuth_LoginTelegramArgs
  >(Auth_TelegramLoginDocument)

  // if (isDev) {
  //   return
  // }

  if (Date.now() < store.timeTokenStored) {
    return
  }

  const now = Date.now() // Current time in ms

  const twoDaysInMs = 1 * 24 * 60 * 60 * 1000 // 1 day -> hours -> minutes -> seconds -> milliseconds

  const futureTime = now + twoDaysInMs

  void mutate({
    variables: {
      input: {
        telegramUserId: `${userInfo!.id}`,
        walletAddress: address!,
      },
    },
    onCompleted(data) {
      store.update({
        walletAddress: address!,
        token: data.auth_loginTelegram.token!,
        timeTokenStored: futureTime,
      })
    },
  })
  // }
  return { userInfo }
}
