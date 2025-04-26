import { useQuery } from '@tanstack/react-query'
import { useState } from 'react'
import { FaCopy } from 'react-icons/fa6'
import { toast } from 'sonner'
import { useAppContext } from 'src/Root/context'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import { AppSelect } from 'src/components/Select'
import { ChainId } from 'src/lib/config/chains'
import { tokensList } from 'src/lib/config/tokenData'
import { TokenId, getTokenAddress } from 'src/lib/config/tokens'
import { formatEtherBalance, pasteTextFromClipboard } from 'src/lib/utils'
import { useBalance } from 'wagmi'

import { getAccountInfo } from '../history/transactions/func'

import { Card, Label } from '@/src/components/comps'
import { useSendToken } from '@/src/hooks/useSend'
import { BANKS_LIST } from '@/src/lib'
import { COLLECTOR } from '@/src/lib/config'

export default function SendToBank() {
  const [selectedToken, setToken] = useState('cUSD')
  const [bankCode, setBankCode] = useState('0')
  const [bankAccountNo, setBankAccountNo] = useState('')
  const [amount, setAmount] = useState(0)
  const Copy = FaCopy as any
  const { evmAddress } = useAppContext()
  const { sendErc20 } = useSendToken()
  const { data, isLoading } = useBalance({
    address: evmAddress as `0x${string}`,
    chainId: ChainId.Celo,
    token: getTokenAddress(selectedToken as TokenId, ChainId.Celo) as `0x${string}`,
  })

  const handleSend = async () => {
    if (amount < 1000) {
      toast.error(`Must be above #1000`)
      return
    }

    await sendErc20({
      recipient: COLLECTOR,
      amount: amount.toString(),
      token: TokenId.CELO,
    }).then((val) => {
      val
      bankCode
      // send to bank account
    })
  }

  return (
    <div className="w-full items-center justify-center flex flex-col px-1 mb-[20%] gap-y-2">
      <AppSelect
        label="Bank"
        onChange={(data) => {
          setBankCode(data)
        }}
        data={BANKS_LIST.map((val) => {
          return { label: val.name, value: val.code }
        })}
      />
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

      {bankCode.length > 2 && bankAccountNo.length > 9 && (
        <div className="w-full">
          <Label>Account Name</Label>
          <Card className="text-primary">
            <GetAccountName accountNumber={bankAccountNo} bankCode={bankCode} />
          </Card>
        </div>
      )}

      <AppSelect
        label="Currency"
        desc={`${
          isLoading ? '...' : formatEtherBalance(data!.value, data!.decimals, 3)
        } ${selectedToken}`}
        onChange={(data) => {
          setToken(data)
        }}
        data={tokensList
          .filter((val) => val.symbol !== TokenId.CELO)
          .map((val) => {
            return { label: val.symbol, value: val.symbol }
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

      <div className="w-full">
        <Label>You Pay</Label>
        <Card className="text-primary">{selectedToken} ...</Card>
      </div>

      <Button className="mt-5" onClick={handleSend}>
        Send
      </Button>
    </div>
  )
}

function GetAccountName(props: { accountNumber: string; bankCode: string }) {
  const { data, isLoading, error } = useQuery({
    queryKey: ['getAccountName-' + props.accountNumber + '-' + props.bankCode],
    queryFn: async () => {
      const res = await getAccountInfo(props.accountNumber, props.bankCode)
      return res
    },
  })
  if (error) return <>Not found</>
  if (isLoading) return <>...</>
  if (data) return <>{data.account_name}</>
  return <>{''}</>
}
