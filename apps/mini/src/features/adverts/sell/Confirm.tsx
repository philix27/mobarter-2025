import { useMutation } from '@apollo/client'
import {
  Advert_GetResponse,
  BankName,
  MutationOrders_CreateSellArgs,
  MutationResponse,
  OrderActions,
  OrderStatus,
  Orders_CreateSellDocument,
} from '@repo/api'
import React from 'react'
import { toast } from 'sonner'
import { Button } from 'src/components/Button'
import { Card, Label } from 'src/components/comps'
import { formatCurrency } from 'src/lib/utils/helpers'
import { logger } from 'src/lib/utils/logger'
import { AppStores } from 'src/lib/zustand'

export default function SellConfirm({ data }: { data: Advert_GetResponse }) {
  const store = AppStores.useAdvert()

  const [mutate] = useMutation<
    MutationResponse<'orders_CreateSell'>,
    MutationOrders_CreateSellArgs
  >(Orders_CreateSellDocument)

  const handleSubmit = async () => {
    // todo: lock funds in escrow first.
    await mutate({
      variables: {
        input: {
          amount_fiat: store.amountFiat,
          amount_crypto: store.amountCrypto,
          bank_account_no: store.accountNo,
          bank_name: store.bankName as BankName,
          bank_account_name: store.accountName,
          currency_fiat: data.currencyFiat!,
          currency_crypto: data.currencyCrypto!,
          estimated_duration: `${data.duration} minutes`,
          trade_type: data.tradeType!,
          status: OrderStatus.Pending,
          action_user: OrderActions.LockCrypto,
          merchant_id: 2,
          wallet_customer: '0x20F50b8832f87104853df3FdDA47Dd464f885a49',
          wallet_merchant: '0x462E5F272B8431562811126779da6EcaE51A5B40',
          bank_code: ""
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
  }
  return (
    <div className="flex w-full flex-col items-center justify-center">
      <Label className="mt-0">You Send</Label>
      <Card>
        <span className="mr-2 text-muted text-[14px]">{data.currencyCrypto}</span>
        {formatCurrency(store.amountCrypto)}
      </Card>
      <Label>You get</Label>
      <Card>
        <span className="mr-2 text-muted text-[14px]">{data.currencyFiat}</span>
        {formatCurrency(store.amountFiat)}
      </Card>
      <Label>
        Your Bank Account: <span className="text-primary font-medium">{store.accountName}</span>
      </Label>
      <Card>
        {store.bankName} : {store.accountNo}
      </Card>
      <Label>NOTE</Label>
      <Card>Once you confirm this transaction. It cannot be reversed.</Card>

      <div className="w-[75%] justify-between flex mt-4">
        <Button
          className="bg-secondary w-[35%]"
          onClick={() => {
            logger.info('Back clicked')
            store.update({ steps: '1EnterDetails' })
          }}
        >
          Back
        </Button>
        <Button type="button" className="w-[35%]" onClick={handleSubmit}>
          Confirm
        </Button>
      </div>
    </div>
  )
}
