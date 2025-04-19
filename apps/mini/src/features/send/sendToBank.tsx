import { useEthereum } from '@particle-network/auth-core-modal'
import { useState } from 'react'
import { FaCopy } from 'react-icons/fa6'
import { toast } from 'sonner'
import { useAppContext } from 'src/Root/context'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import { AppSelect } from 'src/components/Select'
import { isValidAddress } from 'src/lib/config/addresses'
import { ChainId } from 'src/lib/config/chains'
import { tokensList } from 'src/lib/config/tokenData'
import { TokenId, getTokenAddress } from 'src/lib/config/tokens'
import { formatEtherBalance, pasteTextFromClipboard, shortString } from 'src/lib/utils'
import { logger } from 'src/lib/utils/logger'
import { useBalance } from 'wagmi'

export default function SendToBank() {
  const [selectedToken, setToken] = useState('CELO')
  const [bankAccountNo, setBankAccountNo] = useState('')
  const [amount, setAmount] = useState(0)
  const Copy = FaCopy as any
  const { sendTransaction } = useEthereum()
  const { handleError } = useAppContext()
  const { evmAddress } = useAppContext()
  const { data, isLoading } = useBalance({
    address: evmAddress as `0x${string}`,
    chainId: ChainId.Celo,
    token: getTokenAddress(selectedToken as TokenId, ChainId.Celo) as `0x${string}`,
  })

  const sendNative = async () => {
    try {
      const result = await sendTransaction({
        to: bankAccountNo,
        value: amount.toString(),
        data: 'Send to recipient',
      })
      toast.success(`Send Native Success! Hash: ${shortString(result)}`)
    } catch (error: any) {
      logger.error('sendNative error', error)
      handleError(error)
    }
  }

  const handleSend = async () => {
    if (!isValidAddress(bankAccountNo)) {
      toast.error(`Invalid wallet address`)
      return
    }
    void sendNative()
  }

  return (
    <div className="w-full items-center justify-center flex flex-col px-1 mb-[20%] gap-y-2">
      <Input
        label="Bank Account Number"
        placeholder="Enter account no."
        value={bankAccountNo}
        onChange={(e) => {
          setBankAccountNo(e.target.value)
        }}
        trailingIcon={
          <Copy
            className="text-muted"
            onClick={async () => {
              const text = await pasteTextFromClipboard()
              setBankAccountNo(text)
            }}
          />
        }
      />
      <AppSelect
        label="Currency"
        desc={`${
          isLoading ? '...' : formatEtherBalance(data!.value, data!.decimals, 3)
        } ${selectedToken}`}
        onChange={(data) => {
          setToken(data)
        }}
        data={tokensList.map((val) => {
          return { label: val.fullName, value: val.symbol }
        })}
      />
      <Input
        label="Amount"
        placeholder="Amount to send"
        type="number"
        pattern="[0-9]*"
        inputMode="decimal"
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
