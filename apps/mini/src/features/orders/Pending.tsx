import { useQuery } from '@apollo/client'
import {
  OrderStatus,
  Order_Response,
  Orders_GetAllDocument,
  QueryOrders_GetAllArgs,
  QueryResponse,
} from '@repo/api'
import Link from 'next/link'
import React from 'react'
import { AppStores } from 'src/lib/zustand'

import { NotFound } from '@/src/components/ComingSoon'
import { Spinner } from '@/src/components/Spinner'
import { Constants } from '@/src/lib'
import { cn, formatCurrency as fc } from '@/src/lib/utils'

const DLink = Link as any

type IData = { data: Order_Response }
export default function PendingOrders() {
  return <List />
}

function List() {
  const store = AppStores.useSettings()
  const tab = store.ordersTab
  const { data, loading, error } = useQuery<QueryResponse<'orders_GetAll'>, QueryOrders_GetAllArgs>(
    Orders_GetAllDocument,
    {
      pollInterval: 2000,
      variables: {
        input: {
          status:
            tab === 'PENDING'
              ? OrderStatus.Pending
              : tab === 'COMPLETED'
              ? OrderStatus.Completed
              : undefined,
        },
      },
    }
  )

  if (loading) return <Spinner />
  if (error) return <NotFound />
  return (
    <div className="w-full bg-background no-scrollbar">
      {data && data.orders_GetAll.map((order, i) => <CardItem key={i} data={order} />)}
    </div>
  )
}

function CardItem({ data }: IData) {
  const trade = data.trade_type!
  const isBuy = data.trade_type === 'BUY'
  const textColor = {
    BUY: Constants.textBuyColor,
    SELL: Constants.textSellColor,
  }
  return (
    <DLink href={`/orders/${data.id}`}>
      <div className="rounded-lg bg-card mb-1 px-3 py-2">
        <div className="flex w-full justify-between pb-2 mb-2 border-b-[0.5px] border-muted">
          <p className={cn('text-xs font-bold', textColor[trade])}>{trade}</p>

          <p className={cn('font-bold')}>
            <span className="mr-2">{fc(data.amount_crypto!)}</span>
            <span>{data.currency_crypto}</span>
          </p>
        </div>

        <AdRow
          text1={isBuy ? `Your receive` : 'You sell'}
          text2={` ${fc(data.amount_crypto!)} ${data.currency_crypto}`}
        />
        <AdRow
          text1={isBuy ? 'You pay' : `Your receive`}
          text2={` ${fc(data.amount_fiat!)} ${data.currency_fiat}`}
        />
        {/* <AdRow text1={`Fiat: ${data.currency_fiat!}`} text2={`Crypto: ${data.currency_fiat!}`} /> */}
      </div>
    </DLink>
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
