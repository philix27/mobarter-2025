import { TText, TView } from '@/components';
import { useColor } from '@/lib/color';
import React, { useState } from 'react';
import Wrapper from '@/components/Wrapper';

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
  );
}
