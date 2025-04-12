import { Select, SelectItem } from '@nextui-org/react'
import { useSolana } from '@particle-network/auth-core-modal'
import { chains } from '@particle-network/chains'
import { PublicKey, SystemProgram, Transaction } from '@solana/web3.js'
import bs58 from 'bs58'
import { toast } from 'sonner'
import { useAppContext } from 'src/Root/context'
import { messageValue } from 'src/config'
import { shortString } from 'src/utils'

import { Button } from '../Button'

const SolanaDemo = () => {
  const { address, signMessage, chainInfo, switchChain, signAndSendTransaction } = useSolana()
  const { handleError } = useAppContext()

  const onSignMessage = async () => {
    try {
      const result = await signMessage(Buffer.from(messageValue))
      toast.success(`Sign Message Success! Signature: ${shortString(bs58.encode(result))}`)
    } catch (error: any) {
      console.log('signMessage error', error)
      handleError(error)
    }
  }

  const onSwitchChain = (key: string) => {
    if (!key) return
    const chainId = Number(key.split('-')[1])
    // eslint-disable-next-line @typescript-eslint/no-floating-promises
    switchChain(chainId)
  }

  const sendNative = async () => {
    try {
      const tx = new Transaction()
      tx.add(
        SystemProgram.transfer({
          fromPubkey: new PublicKey(address!),
          toPubkey: new PublicKey('F4FGwoBDM8HZJjGWnhqnh5xwNssbcPgQKD4mEK1r7rjo'),
          lamports: 1,
        })
      )
      const latestBlockhash = await window.particleAuth?.solana.request({
        method: 'getLatestBlockhash',
        params: [
          {
            commitment: 'finalized',
          },
        ],
      })
      const { blockhash, lastValidBlockHeight } = latestBlockhash?.value || {}
      tx.recentBlockhash = blockhash
      tx.lastValidBlockHeight = lastValidBlockHeight
      tx.feePayer = new PublicKey(address!)
      const result = await signAndSendTransaction(tx)
      toast.success(`Send Native Success! Hash: ${shortString(result)}`)
    } catch (error: any) {
      console.log('sendNative error', error)
      handleError(error)
    }
  }

  return (
    <div className="flex w-full flex-col items-center gap-4 py-10">
      <Select
        label="Current Chain"
        placeholder="Select an chain"
        className="w-4/5"
        selectedKeys={[`${chainInfo.name}-${chainInfo.id}`]}
        onSelectionChange={(data) => onSwitchChain(data.currentKey as string)}
      >
        {chains
          .getAllChainInfos()
          .filter((chain) => chain.chainType === 'solana')
          .map((chain) => (
            <SelectItem key={`${chain.name}-${chain.id}`}>{chain.fullname}</SelectItem>
          ))}
      </Select>
      <Button onClick={onSignMessage}>Sign Message</Button>
      <Button onClick={sendNative}>Send Native (1 Lamports)</Button>
    </div>
  )
}

export default SolanaDemo
