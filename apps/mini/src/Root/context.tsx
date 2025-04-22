import { useMutation } from '@apollo/client'
import { SmartAccount } from '@particle-network/aa'
import type { ConnectParam, UserInfo } from '@particle-network/auth-core'
import { AuthType } from '@particle-network/auth-core'
import type { ConnectionStatus } from '@particle-network/auth-core-modal'
import {
  useAuthCore,
  useConnect,
  useCustomize,
  useEthereum,
  useSolana,
} from '@particle-network/auth-core-modal'
import { EVMProvider } from '@particle-network/auth-core-modal/dist/context/evmProvider'
import {
  Auth_TelegramLoginDocument,
  MutationAuth_LoginTelegramArgs,
  MutationResponse,
} from '@repo/api'
import {
  User,
  initData,
  miniApp,
  popup,
  useLaunchParams,
  useSignal,
} from '@telegram-apps/sdk-react'
import React, { createContext, useCallback, useEffect, useMemo, useRef, useState } from 'react'
import { toast } from 'sonner'
import { erc4337Config } from 'src/lib/config/erc4337'
import { logger } from 'src/lib/utils/logger'
import { AppStores } from 'src/lib/zustand'

type ContextValue = {
  handleError: (error: any) => void
  connectError: any
  smartAccount?: SmartAccount | undefined
  evmAddress?: string
  connect: (options?: ConnectParam) => Promise<UserInfo | undefined>
  connectionStatus: ConnectionStatus
  solanaAddress: string | null
  enableSolana: () => Promise<string>
  openWallet: VoidFunction
  onAction: (key: 'logout' | 'account-security') => void
  provider?: EVMProvider
}

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

  if (process.env.NODE_ENV !== 'development') {
    return
  }
  if (!store.token) {
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
        })
      },
    })
  }
  return { userInfo }
}

export const AppContext = createContext<ContextValue | null>(null)

export const AppProvider = ({ children }: React.PropsWithChildren) => {
  const { initDataRaw } = useLaunchParams()
  const { connect, connectionStatus } = useConnect()
  const { provider, address } = useEthereum()
  const { erc4337 } = useCustomize()
  const { openWallet, openAccountAndSecurity } = useAuthCore()
  const [connectError, setConnectError] = useState<any>()
  const initDataConnectedRef = useRef(false)
  const [evmAddress, setEVMAddress] = useState<string>()
  const { address: solanaAddress, enable: enableSolana } = useSolana()

  // useInitData()

  if (provider) {
    const w = window as any
    w.ethereum = provider
  }
  const smartAccount = useMemo(() => {
    if (provider) {
      const accountContracts = {} as any
      erc4337Config.forEach((config) => {
        if (accountContracts[config.name]) {
          accountContracts[config.name].push({
            version: config.version,
            chainIds: config.chains.map((chain) => chain.id),
          })
        } else {
          accountContracts[config.name] = [
            {
              version: config.version,
              chainIds: config.chains.map((chain) => chain.id),
            },
          ]
        }
      })
      return new SmartAccount(provider, {
        projectId: process.env.NEXT_PUBLIC_PARTICLE_PROJECT_ID as string,
        clientKey: process.env.NEXT_PUBLIC_PARTICLE_CLIENT_KEY as string,
        appId: process.env.NEXT_PUBLIC_PARTICLE_APP_ID as string,
        aaOptions: {
          accountContracts,
        },
      })
    }
    return undefined
  }, [provider])

  useEffect(() => {
    if (erc4337 && smartAccount) {
      smartAccount.setSmartAccountContract(erc4337)
    }
  }, [erc4337, provider, smartAccount])

  useEffect(() => {
    if (address) {
      if (erc4337 && smartAccount) {
        smartAccount.setSmartAccountContract(erc4337)
        smartAccount
          .getAddress()
          .then((result) => {
            setEVMAddress(result)
          })
          .catch(() => setEVMAddress('--'))
      } else {
        setEVMAddress(address)
      }
    } else {
      setEVMAddress(undefined)
    }
  }, [address, smartAccount, erc4337])

  const connectWithTelegram = useCallback(
    async (initData: string) => {
      logger.debug('connectWithTelegram')
      try {
        await connect({
          provider: AuthType.telegram,
          thirdpartyCode: initData,
        })
      } catch (error: any) {
        logger.debug('Error: ', error)
        if (error.message) {
          setConnectError(error)
        }
        toast.error('Create wallet error, please reload this page.')
      }
    },
    [connect]
  )

  useEffect(() => {
    if (initDataRaw && connectionStatus === 'disconnected' && !connectError) {
      if (initDataConnectedRef.current) {
        return
      }
      initDataConnectedRef.current = true
      // eslint-disable-next-line @typescript-eslint/no-floating-promises
      connectWithTelegram(initDataRaw)
    }
  }, [initDataRaw, connectionStatus, connectError, connectWithTelegram])

  const handleError = useCallback(
    (error: any) => {
      logger.debug('handleError', error)
      if (error.error_code === 10005) {
        if (!initDataConnectedRef.current && initDataRaw) {
          // eslint-disable-next-line @typescript-eslint/no-floating-promises
          connectWithTelegram(initDataRaw)
        } else {
          logger.debug('popup open')
          popup
            .open({
              title: 'Invalid Token',
              message: 'Please reopen this mini app.',
              buttons: [{ type: 'ok', id: 'close' }],
            })
            .then((id) => {
              if (id == 'close') {
                miniApp.close()
              }
            })
            .catch(() => {
              //ignore
            })
        }
      } else {
        toast.error(error.message || 'unknown')
      }
    },
    [connectWithTelegram, initDataRaw]
  )

  const onAction = (key: 'logout' | 'account-security') => {
    if (key === 'logout') {
      localStorage.clear()
      miniApp.close()
    } else if (key === 'account-security') {
      openAccountAndSecurity()
    }
  }

  return (
    <AppContext.Provider
      value={{
        handleError,
        connectError,
        smartAccount: smartAccount,
        evmAddress,
        connect,
        connectionStatus,
        solanaAddress,
        enableSolana,
        openWallet,
        onAction,
        provider,
      }}
    >
      {children}
    </AppContext.Provider>
  )
}

export const useAppContext = () => {
  const context = React.useContext(AppContext)
  if (!context) throw Error('App Hooks must be inside a Provider.')
  return context
}
