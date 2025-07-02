import { TView } from '@/components'
import { InputButton, InputText } from '@/components/forms'
import { AppStores } from '@/lib'
import React, { useState } from 'react'
import AppHooks from '@/hooks'
import { PayableTokenCard } from '@/features/tokens'

type IData = { value: string | undefined; error: string | undefined }
export default function BuyCryptoOrder() {
  const { transferERC20 } = AppHooks.useTransferToken()
  const [amount, setAmount] = useState<IData>()
  const [tokenErr, setTokenErr] = useState<string>()
  const storeTokens = AppStores.useTokens()
  const token = storeTokens.activeToken

  const handleSend = async () => {
    if (amount === undefined || amount.value === undefined) {
      setAmount((prev) => {
        return { error: 'Enter a valid amount', value: prev?.value }
      })
      return
    }
    if (token === undefined || token === null) {
      setTokenErr('Select a token')
      return
    }

    transferERC20({
      recipient: 'Collector',
      amount: amount.value,
      token: token!.address,
    })
    // await sendTransaction({ transaction, account: '0x3231' });
  }
  return (
    <TView style={{ width: '100%', rowGap: 20 }}>
      <PayableTokenCard />
      <InputText
        label={'Amount'}
        keyboardType="numeric"
        placeholder={'0.00'}
        value={amount?.value || ''}
        error={amount?.error}
        onChangeText={(text) => {
          if (text.length > 12) {
            return
          }
          setAmount({ value: text, error: undefined })
        }}
        inputStyle={{ fontWeight: '700' }}
      />
      <TView style={{ alignItems: 'center', justifyContent: 'center' }}>
        <InputButton title="Send" onPress={handleSend} style={{ width: '50%' }} />
      </TView>
    </TView>
  )
}
