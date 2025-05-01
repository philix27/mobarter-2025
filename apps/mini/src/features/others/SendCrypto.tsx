import { useEthereum } from '@particle-network/auth-core-modal'
import { ethers } from 'ethers'
import { useState } from 'react'
import { FaCopy } from 'react-icons/fa6'
import { toast } from 'sonner'
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

import { useAppContext } from '@/src/Root/TgContext'
import { useSendToken } from '@/src/hooks/useSend'

export default function SendCrypto() {
  const [selectedToken, setToken] = useState('CELO')
  const [walletAddress, setWalletAddress] = useState('')
  // const [myErr, setMyErr] = useState('')
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

  const { sendErc20 } = useSendToken()

  // const bal
  const sendNative = async () => {
    try {
      const result = await sendTransaction({
        to: walletAddress,
        value: ethers.parseUnits(amount.toString(), 18).toString(),
        data: 'Send to recipient',
      })
      toast.success(`Send Native Success! Hash: ${shortString(result)}`)
      setWalletAddress('')
    } catch (error: any) {
      logger.error('sendNative error', error)
      handleError(error)
    }
  }

  const handleSend = async () => {
    // toast.success(`Clicked`)
    if (!isValidAddress(walletAddress)) {
      toast.error(`Invalid wallet address`)
      return
    }
    // toast.success(`After Clicked`)

    if (selectedToken === 'CELO') {
      toast.success(`CELO`)
      void sendNative()
    } else {
      toast.success(`ERC20`)
      // const token = tokensList.filter((val) => val.symbol === selectedToken)[0].symbol
      await sendErc20({
        recipient: walletAddress,
        amount: amount.toString(),
        token: TokenId.cUSD,
      })
        .then((hash) => {
          toast.success(`Send Native Success! Hash: ${shortString(hash)}`)
          setWalletAddress('')
        })
        .catch((err) => {
          // setMyErr(err)
          toast.error(`Error: ${err}`)
        })
    }
  }

  return (
    <div className="w-full items-center justify-center flex flex-col px-1 mb-[20%] gap-y-2">
      <AppSelect
        label="Currency"
        desc={`${
          isLoading ? '...' : formatEtherBalance(data!.value, data!.decimals, 3)
        } ${selectedToken}`}
        onChange={(data) => {
          setToken(data)
        }}
        data={tokensList.map((val) => {
          return { label: val.symbol, value: val.symbol }
        })}
      />
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
      {/* {myErr && <p className="mt-d text-destructive text-wrap px-4 w-full overflow-y-scroll">{JSON.stringify(myErr)}</p>} */}
    </div>
  )
}
