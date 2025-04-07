import { useQuery } from '@apollo/client'
import {
  AdvertStatus,
  Advert_GetResponse,
  Adverts_GetMerchantAdvertsDocument,
  QueryAdverts_GetMerchantAdvertsArgs,
  QueryResponse,
} from '@repo/api'
import Link from 'next/link'
import React from 'react'
import { Constants } from 'src/lib/consts'
import { formatCurrency } from 'src/lib/helpers'
import { cn } from 'src/lib/utils'
import { AppStores } from 'src/lib/zustand'

type IAd = { data: Advert_GetResponse }
export default function OpenAdverts() {
  return <List />
}

function List() {
  const store = AppStores.useSettings()
  const { data, loading, error } = useQuery<
    QueryResponse<'adverts_getMerchantAdverts'>,
    QueryAdverts_GetMerchantAdvertsArgs
  >(Adverts_GetMerchantAdvertsDocument, {
    pollInterval: 2000,
    variables: {
      input: {
        status:
          store.manageAdsTab === 'OPEN'
            ? AdvertStatus.Open
            : store.manageAdsTab === 'CLOSED'
            ? AdvertStatus.Close
            : undefined,
      },
    },
  })

  if (loading) return <div>Loading...</div>
  if (error) return <div>Error...</div>
  return (
    <div className="w-full bg-background no-scrollbar">
      {data &&
        data.adverts_getMerchantAdverts
          //   .filter((val) => val.tradeType! === store.manageAdsTab)
          .map((ad, i) => <AdvertCardItem key={i} data={ad} />)}
    </div>
  )
}

function AdvertCardItem({ data }: IAd) {
  return (
    <Link href={`/ads/${data.tradeType === 'BUY' ? 'buy' : 'sell'}/${data.id}`}>
      <div className="rounded-lg bg-secondary mb-1 px-3 py-2">
        <div className="flex w-full justify-between pb-2 mb-2 border-b border-muted">
          <p>
            {data.currencyCrypto}/{data.currencyCrypto}{' '}
          </p>
          <div
            className={cn(
              'rounded-md px-3 py-[2px]',
              data.tradeType! === 'BUY' ? Constants.buyColor : Constants.sellColor
            )}
          >
            <p className={cn('font-medium text-primary-foreground text-[12px]')}>
              {data.tradeType}
            </p>
          </div>
        </div>
        {data.merchant_nickname && data.merchant_trade_count && (
          <AdRow
            text1={`${data.merchant_nickname}`}
            text2={`${data.merchant_trade_count!.toString()} trades`}
          />
        )}

        <AdRow
          text1={`Duration: ${data.duration!}`}
          text2={`${data.currencyFiat} ${formatCurrency(data.limitLower!, 0)} - ${formatCurrency(
            data.limitUpper!,
            0
          )}`}
        />
        <AdRow text1={`Fiat: ${data.currencyFiat!}`} text2={`Crypto: ${data.currencyCrypto!}`} />
      </div>
    </Link>
  )
}

function AdRow(props: { text1: string; text2: string }) {
  return (
    <div className="flex w-full justify-between mb-1">
      <p className="text-muted text-sm">{props.text1}</p>
      <p className="text-muted text-sm ">{props.text2}</p>
    </div>
  )
}
