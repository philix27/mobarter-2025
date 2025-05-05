import React from 'react'

import { Card, Label } from '@/src/components/comps'
import { useTokenBalance, useTokenBalanceWeb } from '@/src/hooks/useTokenBal'
import { TokenId } from '@/src/lib/config'
import { AppStores } from '@/src/lib/zustand'

export default function BalCard() {
  const store = AppStores.useSettings()
  if (store.appEnv === 'MINIPAY') return <Web />
  return <Tg />
}

function Web() {
  const tokenBalance = useTokenBalanceWeb(TokenId.cUSD)
  return (
    <div className="w-full">
      <Label>Balance</Label>
      <Card className="bg-primary text-primary-foreground">{tokenBalance}</Card>
    </div>
  )
}
function Tg() {
  const tokenBalance = useTokenBalance(TokenId.cUSD)
  return (
    <div className="w-full">
      <Label>Balance</Label>
      <Card className="bg-primary text-primary-foreground">{tokenBalance}</Card>
    </div>
  )
}
