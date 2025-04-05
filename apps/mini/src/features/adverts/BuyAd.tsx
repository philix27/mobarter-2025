import { Advert_GetResponse } from '@repo/api'
import React from 'react'

import {  Instructions, Label, Line, Row } from './comps'
import { Button } from 'src/components/Button'

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
      <Instructions>{data.instructions}</Instructions>
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
        <Row text="Fiat" text2={data.currencyFiat!.toString()} /> <Line />
        <Row text="Nickname" text2={data.merchant_nickname.toString()} /> <Line />
        <Row text="Trade count" text2={data.merchant_trade_count.toString()} /> <Line />
        <Row text="Merchant Address" text2={data.merchant_wallet.toString().substring(0, 7)} />
        <Line />
        <Row text="Bank" text2={'Opay'} />
        <Line />
        <Row text="Trade type" text2={data.tradeType!.toString()} />
      </div>
      <Button className={'bg-secondary'}>Place Order</Button>
    </div>
  )
}
