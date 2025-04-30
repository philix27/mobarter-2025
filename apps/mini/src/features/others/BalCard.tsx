import { Label, Card } from '@/src/components/comps'
import { useTokenBalance } from '@/src/hooks/useTokenBal'
import { TokenId } from '@/src/lib/config'
import React from 'react'

export default function BalCard() {
  const tokenBalance = useTokenBalance(TokenId.cUSD)
  return (
    <div className="w-full">
      <Label>Balance</Label>
      <Card className="text-primary">{tokenBalance}</Card>
    </div>
  )
}
