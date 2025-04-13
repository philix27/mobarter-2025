import { useAuthCore, useUserInfo } from '@particle-network/auth-core-modal'
import { miniApp, viewport } from '@telegram-apps/sdk-react'
import { useEffect } from 'react'
import { BsWallet } from 'react-icons/bs'
import { MdLogout, MdSecurity } from 'react-icons/md'
import { Button } from 'src/components/Button'
import { Card, Label } from 'src/components/comps'
import { shortenAddress } from 'src/lib/config/addresses'
import { useAppContext } from 'src/root/context'
import { copyTextToClipboard, shortString } from 'src/utils'

import { Row } from './comps'
import LinksAndActions from './links'

export function MoreFeat() {
  const { openWallet, openAccountAndSecurity } = useAuthCore()
  const userInfo = useUserInfo()
  const { handleError, connectError, evmAddress, solanaAddress, enableSolana, connectionStatus } =
    useAppContext()
  // TODO: Cross check
  useEffect(() => {
    if (viewport) {
      viewport.expand()
    }
  }, [])

  const createSolanaWallet = async () => {
    try {
      await enableSolana()
    } catch (error) {
      handleError(error)
    }
  }

  const copyText = (text: string) => {
    // eslint-disable-next-line @typescript-eslint/no-floating-promises
    copyTextToClipboard(text)
  }

  const onOpenWallet = () => {
    openWallet({
      windowSize: 'large',
      topMenuType: 'close',
    })
  }

  const onAction = (key: 'logout' | 'account-security') => {
    if (key === 'logout') {
      localStorage.clear()
      miniApp.close()
    } else if (key === 'account-security') {
      openAccountAndSecurity()
    }
  }

  if (connectionStatus !== 'connected') {
    return (
      <div className="w-full">
        {!connectError && <div className="text-gray-400">Connecting Wallet...</div>}
        {connectError?.message && (
          <div className="px-4 text-center text-danger">{connectError.message}</div>
        )}
        {connectError?.extra && typeof connectError?.extra === 'string' && (
          <div className="px-4 text-center text-danger">{connectError.extra}</div>
        )}
        {connectError && (
          <Button color="danger" onClick={() => miniApp.close()}>
            Close
          </Button>
        )}
      </div>
    )
  }

  return (
    <>
      {userInfo.userInfo!.email && (
        <>
          <Label>Email</Label>
          <Card> {userInfo.userInfo!.email}</Card>
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
          <Card onClick={() => copyText(solanaAddress)}> {shortString(solanaAddress, 7)}</Card>
        </>
      )}
      <Label>ACTIONS</Label>
      <div className="p-1 bg-card gap-y-[2px] flex flex-col rounded-md">
        <Row
          text="Logout"
          Icon={MdLogout}
          onClick={() => {
            onAction('logout')
          }}
        />
        <Row text="Open Particle Wallet" Icon={BsWallet} onClick={onOpenWallet} />
        <Row
          text="Account Security"
          Icon={MdSecurity}
          onClick={() => {
            onAction('account-security')
          }}
        />
      </div>
      <LinksAndActions />
      {!solanaAddress && (
        <Button
          className="mt-2 rounded-3xl text-xs"
          color="primary"
          onClick={() => createSolanaWallet()}
        >
          Create Solana Wallet
        </Button>
      )}
    </>
  )
}
