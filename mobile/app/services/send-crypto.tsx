import { HeaderBar, Wrapper } from '@/components/layout'
import SendCryptoScreen from '@/features/send'
import React from 'react'

export default function SendCrypto() {
  return (
    <>
      <HeaderBar title="Send crypto" showBackBtn />
      <Wrapper>
        <SendCryptoScreen />
      </Wrapper>
    </>
  )
}
