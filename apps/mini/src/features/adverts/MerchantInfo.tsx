import { Advert_GetResponse } from '@repo/api'

import { Label, Line, Row } from '../../components/comps'

export function MerchantInfo({ data }: { data: Advert_GetResponse }) {
  return (
    <>
      <Label>Merchant Details</Label>
      <div className="bg-card rounded-md px-3 py-1 w-full">
        <Row text="Nickname" text2={data.merchant_nickname.toString()} /> <Line />
        <Row text="Trade count" text2={data.merchant_trade_count.toString()} /> <Line />
        <Row text="Merchant Address" text2={data.merchant_wallet.toString().substring(0, 7)} />
      </div>
    </>
  )
}
