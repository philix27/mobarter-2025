import { useAuthCore } from '@particle-network/auth-core-modal'
import { miniApp, viewport } from '@telegram-apps/sdk-react'
import { ReactNode, useEffect } from 'react'
import { BsWallet } from 'react-icons/bs'
import { MdLogout, MdSecurity } from 'react-icons/md'
import { useAppContext } from 'src/Root/context'
import { Button } from 'src/components/Button'
import { Label } from 'src/components/comps'

import { Row } from './comps'
import LinksAndActions from './links'
import Support from './support'

export function MoreFeat() {
  const { openWallet, openAccountAndSecurity } = useAuthCore()
  const { handleError, connectError, solanaAddress, enableSolana, connectionStatus } =
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
      <Container>
        <Support />
      </Container>
      <Container>
        <Label>ACTIONS</Label>
        <Row text="Particle Wallet" Icon={BsWallet} onClick={onOpenWallet} />
        <Row
          text="Account Security"
          Icon={MdSecurity}
          onClick={() => {
            onAction('account-security')
          }}
        />
      </Container>
      <Container>
        <LinksAndActions />
      </Container>
      <Container>
        <Row
          text="Logout"
          Icon={MdLogout}
          onClick={() => {
            localStorage.clear()
            miniApp.close()
          }}
        />
      </Container>
      {solanaAddress && (
        <div className="w-full flex items-center justify-center mt-4">
          <Button
            className="mt-2 rounded-3xl text-xs"
            color="primary"
            onClick={() => createSolanaWallet()}
          >
            Create Solana Wallet
          </Button>
        </div>
      )}
    </>
  )
}

function Container(props: { children: ReactNode }) {
  return (
    <div className="p-[2px] bg-card gap-y-[2px] flex flex-col rounded-md mt-4">
      {props.children}
    </div>
  )
}
