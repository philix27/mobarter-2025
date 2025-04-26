import { useQuery } from '@tanstack/react-query'
import { useState } from 'react'
import { FaCopy } from 'react-icons/fa6'
import { toast } from 'sonner'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import { AppSelect } from 'src/components/Select'
import { TokenId } from 'src/lib/config/tokens'
import { pasteTextFromClipboard } from 'src/lib/utils'

import { getAccountInfo } from '../history/transactions/func'

import { Card, Label } from '@/src/components/comps'
import { usePrice } from '@/src/hooks/usePrice'
import { useSendToken } from '@/src/hooks/useSend'
import { useTokenBalance } from '@/src/hooks/useTokenBal'
import { isDev } from '@/src/lib'
import { BANKS_LIST } from '@/src/lib/banks'
import { COLLECTOR } from '@/src/lib/config'

const Copy = FaCopy as any
export default function SendToBank() {
  // const [selectedToken, setToken] = useState('cUSD')
  const [bankCode, setBankCode] = useState('0')
  const [bankAccountNo, setBankAccountNo] = useState('')
  const [amount, setAmount] = useState(0)

  const { sendErc20 } = useSendToken()
  const { amountToPay, handleOnChange } = usePrice()
  const balance = useTokenBalance(TokenId.cUSD)

  const handleSend = async () => {
    const leastAmount = isDev ? 50 : 50
    if (amountToPay === undefined || amountToPay < leastAmount) {
      toast.error(`Must be above #${leastAmount}`)
      return
    }

    await sendErc20({
      recipient: COLLECTOR,
      amount: amountToPay!.toString(),
      token: TokenId.cUSD,
    }).then((val) => {
      toast.success('Sent successfully')
      val
      bankCode
      // send to bank account
    })
  }

  const validateAmount = () => {
    const _tokenBal = parseFloat(balance)
    const tBal = _tokenBal > 0
    if (!tBal) return undefined
    if (amountToPay === undefined) return undefined

    // if (amountToPay > 0) return undefined

    if (_tokenBal < amountToPay) return 'Amount is less than your balance'
    return undefined
  }

  return (
    <div className="w-full items-center justify-center flex flex-col px-1 mb-[20%] gap-y-2">
      <div className="w-full">
        <Label>Balance</Label>
        <Card className="text-primary">{balance}</Card>
      </div>
      <AppSelect
        label="Bank*"
        onChange={(data) => {
          setBankCode(data)
        }}
        data={BANKS_LIST.map((val) => {
          return { label: val.name, value: val.code }
        })}
      />
      <Input
        label="Bank Account Number*"
        placeholder="Enter account no."
        value={bankAccountNo}
        type="number"
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

      {/* <AppSelect
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
      /> */}
      <Input
        label="NGN Amount*"
        placeholder="Amount to send"
        type="number"
        value={amount}
        error={validateAmount()}
        onChange={(e) => {
          const n = parseFloat(e.target.value)
          setAmount(n)
          handleOnChange(n)
        }}
      />

      <div className="w-full">
        <Label>You Pay</Label>
        <Card className="text-primary">
          {TokenId.cUSD} {amountToPay}
        </Card>
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
