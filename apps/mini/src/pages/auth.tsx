import { useLoginWithEmail, useWallets } from '@privy-io/react-auth'
import * as p from '@privy-io/react-auth'
import { useState } from 'react'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import Wrapper from 'src/components/wrapper/Wrapper'
import { logger } from 'src/lib/utils/logger'

export default function LoginWithEmail() {
  const [email, setEmail] = useState('')
  const [code, setCode] = useState('')
  const login = useLoginWithEmail()

  return (
    <Wrapper>
      <div className="flex flex-col items-center justify-center">
        <Input
          onChange={(e) => setEmail(e.currentTarget.value)}
          value={email}
          placeholder="Email"
        />
        <Button onClick={() => login.sendCode({ email })}>Send Code</Button>
        <Input onChange={(e) => setCode(e.currentTarget.value)} value={code} placeholder="Code" />
        <Button onClick={() => login.loginWithCode({ code })}>Login</Button>
        <CallMe />
        {/* <SendTransactionButton /> */}
      </div>
    </Wrapper>
  )
}

function CallMe() {
  const w = useWallets()
  const { createWallet } = p.useCreateWallet({
    onSuccess(p) {
      logger.info('Wallet created: ', p.wallet.address)
    },
    onError(e) {
      logger.error('Wallet could not be created', e)
    },
  })

  async function create() {
    const r = await createWallet({ walletIndex: 8 })
    r.address
  }
  const lopez = p.getEmbeddedConnectedWallet([])
  if (!w.ready) return <div>Not ready</div>

  return (
    <div className=" w-full">
      <p>Privy is ready</p>
      {w.wallets.map((wal, i) => (
        <div className="text-wrap break-words flex flex-col" key={i}>
          <code>Address: {wal.address}</code>
          <code>ChainId: {wal.chainId}</code>

          <Button
            onClick={async () => {
              await wal.fund()
            }}
          >
            Fund
          </Button>
          <Button
            onClick={async () => {
              if (wal.chainId === '44787') {
                await wal.switchChain(42220)
              } else {
                await wal.switchChain(44787)
              }
            }}
          >
            Switch
          </Button>
        </div>
      ))}

      <p>Get Connected Embedded.</p>

      <p>{JSON.stringify(lopez)}</p>
    </div>
  )
}

// export  function SendTransactionButton() {
//   const { sendTransaction } = useSendTransaction()
//   const onSendTransaction = async () => {
//     sendTransaction({
//       to: '0x20F50b8832f87104853df3FdDA47Dd464f885a49',
//       value: 100000,
//     })
//   }

//   return <button onClick={onSendTransaction}>Send Transaction</button>
// }
