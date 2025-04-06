import { useQuery } from '@apollo/client'
import * as Api from '@repo/api'
import { QueryResponse } from '@repo/api'
import Link from 'next/link'
import { useEffect } from 'react'
import { Tab } from 'src/components/Tab'
import Wrapper from 'src/components/wrapper/Wrapper'
import { cn } from 'src/lib/utils'
import { AppStores } from 'src/lib/zustand'

type IAd = { data: Api.Advert_GetResponse }

export default function Page() {
  const store = AppStores.useAdvert()
  useEffect(() => {
    store.clear()
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [])
  return (
    <Wrapper>
      <div className="w-full items-center justify-center flex flex-col bg-background h-full">
        <Tab
          data={[
            {
              title: 'BUY',
              isActive: store.tradeType === 'BUY',
              onClick: () => {
                store.update({
                  tradeType: 'BUY',
                })
              },
            },
            {
              title: 'SELL',
              isActive: store.tradeType === 'SELL',
              onClick: () => {
                store.update({
                  tradeType: 'SELL',
                })
              },
            },
          ]}
        />
        <List />
      </div>
    </Wrapper>
  )
}
function List() {
  const store = AppStores.useAdvert()
  const { data, loading, error } = useQuery<QueryResponse<'adverts_getAll'>>(
    Api.Adverts_GetAllDocument
  )

  if (loading) return <div>Loading...</div>
  if (error) return <div>Error...</div>
  return (
    <div className="w-full bg-background no-scrollbar">
      {data &&
        data.adverts_getAll
          .filter((val) => val.tradeType! === store.tradeType)
          .map((ad, i) => <AdItem key={i} data={ad} />)}
    </div>
  )
}

function AdItem({ data }: IAd) {
  return (
    <Link href={`/ads/${data.tradeType === 'BUY' ? 'buy' : 'sell'}/${data.id}`}>
      <div className="rounded-lg bg-secondary mb-1 p-4">
        <div className="flex w-full justify-between pb-2 mb-2 border-b border-muted">
          <p>{data.rate}</p>
          <p
            className={cn(
              ' font-semibold',
              data.tradeType! === 'BUY' ? 'text-[#48ddff]' : 'text-primary'
            )}
          >
            {data.tradeType}
          </p>
        </div>
        <AdRow
          text1={`${data.merchant_nickname}`}
          text2={`${data.merchant_trade_count!.toString()} trades`}
        />
        <AdRow
          text1="Limit"
          text2={`${data.limitLower!.toString()} - ${data.limitUpper!.toString()}`}
        />
        <AdRow text1="Duration" text2={data.duration!} />
        <AdRow text1="Crypto" text2={data.currencyCrypto!} />
        <AdRow text1="Fiat" text2={data.currencyFiat!} />
      </div>
    </Link>
  )
}

function AdRow(props: { text1: string; text2: string }) {
  return (
    <div className="flex w-full justify-between mb-2">
      <p className="text-muted">{props.text1}</p>
      <p>{props.text2}</p>
    </div>
  )
}
