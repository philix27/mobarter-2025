import { useMutation } from '@apollo/client'
import {
  BankName,
  CurrencyCrypto,
  CurrencyFiat,
  MutationOrders_CreateSellArgs,
  MutationResponse,
  OrderActions,
  OrderMode,
  OrderStatus,
  Orders_CreateSellDocument,
  TradeType,
} from '@repo/api'
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

import { useAppContext } from '@/src/Root/context'
import { Card, Label } from '@/src/components/comps'
import { usePrice } from '@/src/hooks/usePrice'
import { useSendToken } from '@/src/hooks/useSend'
import { useTokenBalance } from '@/src/hooks/useTokenBal'
import { isDev } from '@/src/lib'
import { BANKS_LIST } from '@/src/lib/banks'
import { COLLECTOR } from '@/src/lib/config'
import { AppStores } from '@/src/lib/zustand'

const Copy = FaCopy as any
export default function SendToBank() {
  const store = AppStores.useSendToBank()
  // const [selectedToken, setToken] = useState('cUSD')
  const [bankCode, setBankCode] = useState('0')
  const [bankAccountNo, setBankAccountNo] = useState('')
  const [amountFiat, setAmount] = useState(0)
  const { evmAddress } = useAppContext()
  const { sendErc20 } = useSendToken()
  const { amountToPay, handleOnChange } = usePrice()
  const balance = useTokenBalance(TokenId.cUSD)

  const [mutate] = useMutation<
    MutationResponse<'orders_CreateSell'>,
    MutationOrders_CreateSellArgs
  >(Orders_CreateSellDocument)

  const handleSend = async () => {
    const leastAmount = isDev ? 50 : 50

    if (amountToPay === undefined) {
      toast.error(`Amount needed`)
      return
    }
    if (amountFiat < leastAmount) {
      toast.error(`The least amount is: ${leastAmount}`)
    }

    if (amountToPay > parseFloat(balance)) {
      toast.error(`Your balance is not enough`)
      return
    }

    if (store.accountName === undefined || store.accountName.length < 2) {
      toast.error(`Account Name not found`)
      return
    }

    await sendErc20({
      recipient: COLLECTOR,
      amount: amountToPay!.toString(),
      token: TokenId.cUSD,
    }).then(async (txn_hash) => {
      toast.success('Sent successfully')

      // send to bank account
      // todo: lock funds in escrow first.
      await mutate({
        variables: {
          input: {
            amount_fiat: amountFiat,
            amount_crypto: amountToPay,
            currency_fiat: CurrencyFiat.Ngn!,
            currency_crypto: CurrencyCrypto.Cusd!,
            estimated_duration: `EXPRESS`,
            trade_type: TradeType.Sell!,
            status: OrderStatus.Pending,
            action_user: OrderActions.LockCrypto,
            merchant_id: 1,
            wallet_customer: evmAddress!,
            wallet_merchant: COLLECTOR,
            mode: OrderMode.Express,
            bank_account_no: bankAccountNo,
            bank_code: bankCode,
            txn_hash: txn_hash,
            bank_name: BankName.NgOpay,
            bank_account_name: store.accountName,
          },
        },
        onCompleted() {
          toast.success('Success! Order created')
        },
        onError() {
          toast.error('Could not create order')
        },
        refetchQueries: [],
      })
    })
  }

  const validateAmount = () => {
    const _tokenBal = parseFloat(balance)
    const tBal = _tokenBal > 0
    if (!tBal) return undefined
    if (amountToPay === undefined) return undefined

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
          if (e.target.value.length > 12) {
            return
          }
          setBankAccountNo(e.target.value)
        }}
        trailingIcon={
          <Copy
            className="text-muted"
            onClick={async () => {
              const text = await pasteTextFromClipboard()
              const n = parseInt(text)
              if (n > 0) {
                setBankAccountNo(text)
              }
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

      <Input
        label="NGN Amount*"
        placeholder="Amount to send"
        type="number"
        value={amountFiat}
        error={validateAmount()}
        onChange={(e) => {
          const n = parseFloat(e.target.value)
          const isValidNo = n > 0
          if (!isValidNo) return
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
  const store = AppStores.useSendToBank()
  const { data, isLoading, error } = useQuery({
    queryKey: ['getAccountName-' + props.accountNumber + '-' + props.bankCode],
    queryFn: async () => {
      const res = await getAccountInfo(props.accountNumber, props.bankCode)
      store.update({ accountName: res.account_name })
      return res
    },
  })
  if (isLoading) return <>...</>
  if (error) {
    // store.update({ accountName: undefined })
    return <>Not found</>
  }
  if (data) {
    // store.update({ accountName: data.account_name })
    return <>{data.account_name}</>
  }
  return <>{''}</>
}
