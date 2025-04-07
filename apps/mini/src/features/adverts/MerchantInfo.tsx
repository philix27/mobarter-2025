import { Advert_GetResponse } from '@repo/api'

import { AdsRow, Label, Line } from '../../components/comps'

export function MerchantInfo({ data }: { data: Advert_GetResponse }) {
  return (
    <>
      <Label>Merchant Details</Label>
      <div className="bg-card rounded-md px-3 py-1 w-full">
        {data.merchant_nickname && (
          <>
            <AdsRow text="Nickname" text2={data.merchant_nickname.toString()} />
            <Line />
          </>
        )}

        {data.merchant_trade_count && (
          <>
            <AdsRow text="Trade count" text2={data.merchant_trade_count.toString()} />
            <Line />
          </>
        )}
        {data.wallet_address && (
          <AdsRow text="Merchant Address" text2={data.wallet_address.toString().substring(0, 7)} />
        )}
      </div>
    </>
  )
}
