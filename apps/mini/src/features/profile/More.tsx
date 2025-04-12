import { useAuthCore, useUserInfo } from '@particle-network/auth-core-modal'
import { miniApp, viewport } from '@telegram-apps/sdk-react'
import { useEffect } from 'react'
import { IconType } from 'react-icons'
import { BsWallet } from 'react-icons/bs'
import { MdLogout, MdSecurity } from 'react-icons/md'
import { useAppContext } from 'src/Root/context'
import { Button } from 'src/components/Button'
import EVMDemo from 'src/components/demo/evm'
import SolanaDemo from 'src/components/demo/solana'
import { Card, Label } from 'src/components/comps'
import { copyTextToClipboard, shortString } from 'src/utils'

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
  }, [viewport])

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
          <Card onClick={() => copyText(evmAddress!)}> {shortString(evmAddress, 7)}</Card>
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

      {!solanaAddress && (
        <Button
          className="mt-2 rounded-3xl text-xs"
          color="primary"
          onClick={() => createSolanaWallet()}
        >
          Create Solana Wallet
        </Button>
      )}

      <Label>EVM</Label>
      <EVMDemo />
      <Label>Solana</Label>
      <SolanaDemo />
    </>
  )
}

function Row(props: { text: string; Icon: IconType; onClick: VoidFunction }) {
  const  Icon  = props.Icon as any
  return (
    <div
      className="flex p-2 items-center bg-background rounded-md hover:bg-card"
      onClick={props.onClick}
    >
      <Icon className="mr-3" />
      <p className="text-[13px]">{props.text}</p>
    </div>
  )
}
