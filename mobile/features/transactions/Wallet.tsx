import { useGetUi } from '@/api'
import { TText } from '@/components/ui'
import React from 'react'
import { RenderComponents } from '../sdui/CompsWrapper'
import { ActivityIndicator } from 'react-native'

export default function WalletTransactions() {
  const { data, isLoading } = useGetUi()

  if (isLoading) {
    return <ActivityIndicator size={'large'} />
  }

  return <RenderComponents components={data.home} />
}
