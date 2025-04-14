import { useEthereum } from '@particle-network/auth-core-modal'
import { useState } from 'react'
import { FaCopy } from 'react-icons/fa6'
import { toast } from 'sonner'
import { useAppContext } from 'src/Root/context'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import { AppSelect } from 'src/components/Select'
import { isValidAddress } from 'src/lib/config/addresses'
import { tokensList } from 'src/lib/config/tokenData'
import { logger } from 'src/lib/utils/logger'
import { pasteTextFromClipboard, shortString } from 'src/utils'

export default function SendCrypto() {
  const [walletAddress, setWalletAddress] = useState('')
  const [amount, setAmount] = useState(0)
  const Copy = FaCopy as any
  const { sendTransaction } = useEthereum()
  const { handleError } = useAppContext()

  const sendNative = async () => {
    try {
      const result = await sendTransaction({
        to: walletAddress,
        value: '0x1',
        data: 'Send to recipient',
      })
      toast.success(`Send Native Success! Hash: ${shortString(result)}`)
    } catch (error: any) {
      logger.error('sendNative error', error)
      handleError(error)
    }
  }

  const handleSend = async () => {
    if (!isValidAddress(walletAddress)) {
      toast.error(`Invalid wallet address`)
      return
    }
    void sendNative()
  }

  return (
    <div className="w-full items-center justify-center flex flex-col px-1 mb-5 gap-y-2">
      <Input
        label="Wallet Address"
        placeholder="Recipients wallet eg: 0x3428928..."
        value={walletAddress}
        onChange={(e) => {
          setWalletAddress(e.target.value)
        }}
        trailingIcon={
          <Copy
            className="text-muted"
            onClick={async () => {
              const text = await pasteTextFromClipboard()
              setWalletAddress(text)
            }}
          />
        }
      />
      <AppSelect
        label="Currency"
        desc="Balance: 10.2 cUSD"
        onChange={(data) => {
          logger.info('Change: ' + data)
        }}
        data={tokensList.map((val) => {
          return { label: val.fullName, value: val.symbol }
        })}
      />
      <Input
        label="Amount"
        placeholder="Amount to send"
        type="number"
        step=".01"
        min={0}
        value={amount}
        onChange={(e) => {
          const n = parseFloat(e.target.value)
          setAmount(n)
        }}
      />
      <Button className="mt-5" onClick={handleSend}>
        Send
      </Button>
    </div>
  )
}
