import { Advert_GetResponse } from '@repo/api'
import React from 'react'
import { Button } from 'src/components/Button'
import { formatCurrency } from 'src/lib/helpers'
import { logger } from 'src/lib/utils/logger'
import { AppStores } from 'src/lib/zustand'

import { Instructions, Label } from '../comps'

export default function SellConfirm({ data }: { data: Advert_GetResponse }) {
  const store = AppStores.useAdvert()
  return (
    <div className="flex w-full flex-col items-center justify-center">
      <Label className="mt-0">You Send</Label>
      <Instructions>
        <span className="mr-2 text-muted text-[14px]">{data.currencyCrypto}</span>
        {formatCurrency(store.amountCrypto)}
      </Instructions>
      <Label>You get</Label>
      <Instructions>
        <span className="mr-2 text-muted text-[14px]">{data.currencyFiat}</span>
        {formatCurrency(store.amountFiat)}
      </Instructions>
      <Label>
        Your Bank Account: <span className="text-primary font-medium">{store.accountName}</span>
      </Label>
      <Instructions>
        {store.bankName} : {store.accountNo}
      </Instructions>
      <Label>NOTE</Label>
      <Instructions>Once you confirm this transaction. It cannot be reversed.</Instructions>

      <div className="w-[75%] justify-between flex mt-4">
        <Button
          className="bg-secondary"
          onClick={() => {
            logger.info('Back clicked')
            store.update({ steps: '1EnterDetails' })
          }}
        >
          Back
        </Button>
        <Button
          type="button"
          onClick={() => {
            // store.update({ steps: '2ConfirmDetails' })
          }}
        >
          Confirm
        </Button>
      </div>
    </div>
  )
}
