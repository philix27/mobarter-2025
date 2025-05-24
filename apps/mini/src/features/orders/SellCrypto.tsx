import { useMutation } from '@apollo/client'
import {
  BankName,
  CurrencyCrypto,
  MutationOrders_CreateSellArgs,
  MutationResponse,
  OrderActions,
  OrderMode,
  OrderStatus,
  Orders_CreateSellDocument,
  TradeType,
} from '@repo/api'
import { useState } from 'react'
import { FaArrowDownShortWide } from 'react-icons/fa6'
import { toast } from 'sonner'
import { Button } from 'src/components/Button'
import Input from 'src/components/Input'
import { TokenId } from 'src/lib/config/tokens'

import ListBankAccounts from '../bankAccount/ListAccounts'
import BalCard from '../others/BalCard'

import { useAppContext } from '@/src/Root/TgContext'
import BottomModal from '@/src/components/BottomModal'
import { Card, Label } from '@/src/components/comps'
import { usePrice } from '@/src/hooks/usePrice'
import { useSendToken } from '@/src/hooks/useSend'
import { useTokenBalance } from '@/src/hooks/useTokenBal'
import { isDev, mapCountryToIso } from '@/src/lib'
import { COLLECTOR } from '@/src/lib/config'
import { AppStores } from '@/src/lib/zustand'

export const convertBankCodeToBankName = (bankCode: string) => {
  bankCode
  return BankName.NgOpay
}

const TrailIcon = FaArrowDownShortWide as any
export default function SellCrypto() {
  const store = AppStores.useSendToBank()
  const storeBank = AppStores.useBankAccount()
  const storeSettings = AppStores.useSettings()
  const [showBanks, setShowBanks] = useState(false)
  // const [selectedToken, setToken] = useState('cUSD')
  // const [bankCode, setBankCode] = useState('0')
  // const [bankAccountNo, setBankAccountNo] = useState('')
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
            currency_fiat: mapCountryToIso[storeSettings.countryIso],
            currency_crypto: CurrencyCrypto.Cusd!,
            estimated_duration: `EXPRESS`,
            trade_type: TradeType.Sell!,
            status: OrderStatus.Pending,
            action_user: OrderActions.LockCrypto,
            merchant_id: 1,
            wallet_customer: evmAddress!,
            wallet_merchant: COLLECTOR,
            txn_hash: txn_hash,
            mode: OrderMode.Express,
            bank_account_no: storeBank.accountNo,
            bank_name: convertBankCodeToBankName(store.bankCode),
            bank_code: storeBank.bankCode,
            bank_account_name: storeBank.accountName,
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
    <div className="w-full items-center justify-center flex flex-col px-1 gap-y-2">
      <BalCard />

      <Input
        label="SELECT Account*"
        placeholder="Enter account no."
        value={`${store.accountName}`}
        disabled
        desc={`${storeBank.bankName} ${store.accountNumber}`}
        trailingIcon={
          <TrailIcon
            className="text-primary"
            onClick={async () => {
              setShowBanks(true)
            }}
          />
        }
      />
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
      <BottomModal
        onClose={() => {
          setShowBanks(false)
        }}
        showSheet={showBanks}
      >
        <ListBankAccounts />
      </BottomModal>
    </div>
  )
}
