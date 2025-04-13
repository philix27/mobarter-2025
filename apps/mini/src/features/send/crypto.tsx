import { useState } from 'react'
import { FaCopy } from 'react-icons/fa6'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import { AppSelect } from 'src/components/Select'
import { logger } from 'src/lib/utils/logger'
import { pasteTextFromClipboard } from 'src/utils'

import { tokensList } from '../home/tokenData'
import { toast } from 'sonner'

export default function SendCrypto() {
  const [walletAddress, setWalletAddress] = useState('')
  const Copy = FaCopy as any

  const handleSend = () => {
    toast.success("Sent")
  }
  return (
    <div className="w-full items-center justify-center flex flex-col px-1 mb-5">
      <Input
        label="Wallet Address"
        placeholder="Recipients wallet eg: 0x3428928..."
        value={walletAddress}
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
      <Input label="Amount" placeholder="Amount to send" type="number" />
      <Button className="mt-5" onClick={handleSend}>Send</Button>
    </div>
  )
}
