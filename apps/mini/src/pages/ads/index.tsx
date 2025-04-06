import { useQuery } from '@apollo/client'
import * as Api from '@repo/api'
import { QueryResponse } from '@repo/api'
import Link from 'next/link'
import { useEffect } from 'react'
import { Tab } from 'src/components/Tab'
import Wrapper from 'src/components/wrapper/Wrapper'
import { Constants } from 'src/lib/consts'
import { formatCurrency } from 'src/lib/helpers'
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
      <div className="rounded-lg bg-secondary mb-1 px-3 py-2">
        <div className="flex w-full justify-between pb-2 mb-2 border-b border-muted">
          <p>{data.currencyCrypto}/{data.currencyCrypto} </p>
          <div className={cn(
            "rounded-md px-3 py-[2px]",
              data.tradeType! === 'BUY'
                ? Constants.buyColor
                : Constants.sellColor
            )}>
            <p
            className={cn(
              'font-medium text-primary-foreground text-[12px]',
             
            )}
          >
            {data.tradeType}
          </p>
          </div>
        </div>
        <AdRow
          text1={`${data.merchant_nickname}`}
          text2={`${data.merchant_trade_count!.toString()} trades`}
        />
        <AdRow text1={`Duration: ${data.duration!}`}   text2={`${data.currencyFiat} ${formatCurrency(data.limitLower!, 0)} - ${formatCurrency(data.limitUpper!, 0)}`} />
        <AdRow text1={`Fiat: ${data.currencyFiat!}`} text2={`Crypto: ${data.currencyCrypto!}`} />
      </div>
    </Link>
  )
}

function AdRow(props: { text1: string; text2: string }) {
  return (
    <div className="flex w-full justify-between mb-1">
      <p className="text-muted text-sm">{props.text1}</p>
      <p className='text-muted text-sm '>{props.text2}</p>
    </div>
  )
}
