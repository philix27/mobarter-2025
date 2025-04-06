import { Advert_GetResponse } from '@repo/api'
import React from 'react'
import { Button } from 'src/components/Button'
import { AdsRow, Card, Label, Line } from 'src/components/comps'

export default function BuyAd({ data }: { data: Advert_GetResponse }) {
  return (
    <div className="w-full items-center justify-center flex flex-col">
      <Label>Amount in {data.currencyFiat}</Label>
      <div className="w-full mx-5">
        <div className="bg-card rounded-md flex px-3 items-center justify-center">
          <input
            type="number"
            className={`
            w-full py-3 bg-card 
            border-none outline-none
            text-[18px]
          `}
          />
          <div className="bg-secondary">
            <p className="text-[18px] text-muted">$893,90</p>
          </div>
        </div>
      </div>
      <Label>Instructions</Label>
      <Card>{data.instructions}</Card>
      <Label>Details</Label>
      <div className="bg-card rounded-md p-3 w-full">
        <AdsRow text="Duration" text2={data.duration!} />
        <Line />
        <AdsRow text="Status" text2={data.advertStatus!} />
        <Line />
        <AdsRow text="Lower Limit" text2={data.limitLower!.toString()!} />
        <Line />
        <AdsRow text="Upper Limit" text2={data.limitUpper!.toString()} /> <Line />
        <AdsRow text="Crypto" text2={data.currencyCrypto!.toString()} /> <Line />
        <AdsRow text="Fiat" text2={data.currencyFiat!.toString()} /> <Line />
        <AdsRow text="Nickname" text2={data.merchant_nickname.toString()} /> <Line />
        <AdsRow text="Trade count" text2={data.merchant_trade_count.toString()} /> <Line />
        <AdsRow text="Merchant Address" text2={data.merchant_wallet.toString().substring(0, 7)} />
        <Line />
        <AdsRow text="Bank" text2={'Opay'} />
        <Line />
        <AdsRow text="Trade type" text2={data.tradeType!.toString()} />
      </div>
      <Button className={'bg-secondary'}>Place Order</Button>
    </div>
  )
}
