import { TText, TView } from '@/components'
import React from 'react'
import QRCode from 'react-native-qrcode-svg'
import { InputButton } from '@/components/forms'
import { ClipboardSet } from '@/lib'
import { ScrollView } from 'react-native'
import AppHooks from '@/hooks'

export default function WalletQRCode() {
  const address = AppHooks.useAddress()
  return (
    <ScrollView
      showsVerticalScrollIndicator={false}
      showsHorizontalScrollIndicator={false}
      bounces={false}
    >
      <TView
        style={{
          paddingBottom: 50,
          flexDirection: 'column',
          alignItems: 'center',
        }}
      >
        <QRCode value={address} logoBackgroundColor="transparent" size={310} />
        <TText style={{ textAlign: 'center', marginVertical: 10 }}>{shortenAddress(address!)}</TText>

        <InputButton
          title="Copy"
          onPress={async () => {
            await ClipboardSet(address!)
          }}
        />
      </TView>
    </ScrollView>
  )
}

function shortenAddress(address: string, chars = 10): string {
  if (!address || address.length < chars * 2) {
    throw new Error('Invalid address')
  }
  return `${address.slice(0, chars)}...${address.slice(-chars)}`
}
