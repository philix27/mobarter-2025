// import { useGetUi } from '@/api'
import React from 'react'
import { RenderComponents } from '../sdui/CompsWrapper'
import { ActivityIndicator } from 'react-native'
import { TText } from '@/components/ui'

export default function OrdersTransactions() {
  // const { data, isLoading } = useGetUi()

  // if (isLoading) {
  //   return <ActivityIndicator size={'large'} />
  // }

  // return <RenderComponents components={data.txnOrders} />
  return <TText>Orders Transactions</TText>
}
