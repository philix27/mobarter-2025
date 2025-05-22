import { TText, TView } from '@/components/ui'
import React, { useState } from 'react'
import { Wrapper } from '@/components/layout'

export default function PaymentsScreen() {
  return (
    <Wrapper>
      <TView style={{ width: '100%' }}>
        <TText>Fixed Deposit</TText>
        <TText>Fixed Deposit</TText>
        <TText>Stream</TText>
        <TText>Auto Pay</TText>
      </TView>
    </Wrapper>
  )
}
