import { useQuery } from '@apollo/client'
import { Advert_GetResponse, QueryResponse } from '@repo/api'
import * as Api from '@repo/api'
import React, { useState } from 'react'
import { toast } from 'react-toastify'
import { Button } from 'src/components/Button'
import { AdsRow, BottomNote, Card, Label, Line } from 'src/components/comps'
import { formatCurrency, roundUpTo2Decimals } from 'src/lib/helpers'
import { AppStores } from 'src/lib/zustand'

import BankAccount from '../../bankAccount/BankAccount'
import { MerchantInfo } from '../MerchantInfo'

export function SellDetails({ data }: { data: Advert_GetResponse }) {
  const store = AppStores.useAdvert()
  const [cryptoAmount, setAmount] = useState<{ amount: number; display: string }>({
    amount: 0,
    display: '',
  })
  const {
    data: fxData,
    loading,
    error,
  } = useQuery<QueryResponse<'fxRate_GetAll'>>(Api.FxRate_GetAllDocument)

  if (loading) return <div>Loading...</div>
  if (error) return <div>Error...</div>

  const { fxRate_GetAll } = fxData!
  const fiatAmt = roundUpTo2Decimals(cryptoAmount.amount * fxRate_GetAll[data.currencyFiat!], 100)

  function handleSubmit() {
    const gtZ = cryptoAmount.amount > 0
    if (!gtZ) {
      toast.error('Crypto value needed. Must be greater than zero')
      return
    }

    if (!store.bankName || !store.accountName || !store.accountNo) {
      toast.error('Bank account info needed')
      return
    }
    store.update({
      steps: '2ConfirmDetails',
      amountFiat: fiatAmt,
      amountCrypto: cryptoAmount.amount,
    })
  }

  return (
    <>
      <Label className="mt-0">You SELL</Label>
      <div className="w-full mx-5">
        <div className="bg-card rounded-md flex px-3 items-center justify-center">
          <span className="mr-2 text-muted text-[14px]">{data.currencyCrypto}</span>
          <input
            type="number"
            step=".01"
            min={0}
            className={`
            w-full py-2 bg-card 
            border-none outline-none
            text-[20px]
          `}
            value={cryptoAmount.amount.toString()}
            onChange={(e) => {
              const amt = e.target.value
              if (amt.length > 10) return
              setAmount({
                amount: parseFloat(amt),
                display: formatCurrency(parseInt(amt)),
              })
            }}
          />
          <div className="bg-secondary">
            <p className="text-[18px] text-muted">{cryptoAmount.display}</p>
          </div>
        </div>
        <BottomNote>
          {data.currencyFiat} {formatCurrency(data.limitLower!)} -{formatCurrency(data.limitUpper!)}
        </BottomNote>
      </div>

      <Label>You get</Label>
      <div className="bg-card rounded-md flex px-3 items-center py-2 w-full">
        <p className="text-[20px]">
          <span className="mr-2 text-muted text-[14px]">{data.currencyFiat}</span>
          {formatCurrency(fiatAmt)}
        </p>
      </div>

      <Label>Card from {data.merchant_nickname}</Label>
      <Card>{data.instructions}</Card>

      <BankAccount />
      <MerchantInfo data={data} />
      <Label>Trade Details</Label>
      <div className="bg-card rounded-md p-3 w-full">
        <AdsRow text="Trade type" text2={data.tradeType!.toString()} />
        <Line />
        <AdsRow text="Duration" text2={data.duration!} />
        <Line />
        <AdsRow text="Status" text2={data.advertStatus!} />
        <Line />
        <AdsRow text="Crypto" text2={data.currencyCrypto!.toString()} /> <Line />
        <AdsRow text="Fiat" text2={data.currencyFiat!.toString()} />
      </div>
      <Button onClick={handleSubmit}>Place Order</Button>
    </>
  )
}
