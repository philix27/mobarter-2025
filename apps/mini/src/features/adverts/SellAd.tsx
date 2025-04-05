import { useQuery } from '@apollo/client'
import { Advert_GetResponse, QueryResponse } from '@repo/api'
import * as Api from '@repo/api'
import React, { useState } from 'react'
import { formatCurrency, roundUpTo2Decimals } from 'src/lib/helpers'
import { BottomNote, Instructions, Label, Line, Row } from './comps'
import  BankAccount from '../bankAccount/BankAccount'
import { MerchantInfo } from './MerchantInfo'
import { Button } from 'src/components/Button'

export default function SellAd({ data }: { data: Advert_GetResponse }) {
  const [amount, setAmount] = useState<{ amount: number; display: string }>({
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
  return (
    <div className="w-full items-center justify-center flex flex-col">
      <Label>You get</Label>
      <div className="w-full mx-5">
        <div className="bg-card rounded-md flex px-3 items-center justify-center">
          <span className="mr-1 text-[20px]">₦</span>
          <input
            type="number"
            step=".01"
            min={0}
            className={`
            w-full py-2 bg-card 
            border-none outline-none
            text-[20px]
          `}
            value={amount.amount}
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
            <p className="text-[20px] text-muted">
              <span className="mr-1 text-muted">₦</span>{amount.display}
            </p>
          </div>
        </div>
        <BottomNote>{data.currencyFiat} {data.limitLower} - { data.limitUpper}</BottomNote>
      </div>

      <Label>You send</Label>
      <div className="bg-card rounded-md flex px-3 items-center py-2 w-full">
        <p className="text-[20px]">
          <span className="mr-1 text-muted">$</span>
          {formatCurrency(roundUpTo2Decimals(amount.amount / fxRate_GetAll.NGN, 100))}
        </p>
      </div>

      <Label>Instructions from {data.merchant_nickname}</Label>
      <Instructions>{data.instructions}</Instructions>

    <BankAccount />
    <MerchantInfo data={data} />
      <Label>Details</Label>
      <div className="bg-card rounded-md p-3 w-full">
        <Row text="Duration" text2={data.duration!} />
        <Line />
        <Row text="Status" text2={data.advertStatus!} />
        <Line />
        <Row text="Lower Limit" text2={data.limitLower!.toString()!} />
        <Line />
        <Row text="Upper Limit" text2={data.limitUpper!.toString()} /> <Line />
        <Row text="Crypto" text2={data.currencyCrypto!.toString()} /> <Line />
        <Row text="Fiat" text2={data.currencyFiat!.toString()} />
        <Line />
        <Row text="Trade type" text2={data.tradeType!.toString()} />
      </div>
      <Button>Place Order</Button>
    </div>
  )
}


