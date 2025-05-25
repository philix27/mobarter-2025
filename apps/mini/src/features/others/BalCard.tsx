import React from 'react'

import { Card, Label } from '@/src/components/comps'
import { useTokenBalance } from '@/src/hooks/useTokenBal'
import { TokenId } from '@/src/lib/config'

export default function BalCard() {
  return <Tg />
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
