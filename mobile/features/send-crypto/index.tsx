import { TView } from '@/components'
import { InputButton, InputText } from '@/components/forms'
import { AppStores, ClipboardGet } from '@/lib'
import { FontAwesome6 } from '@expo/vector-icons'
import React, { useState } from 'react'

import { SelectTokenCard } from '../tokens/SelectTokenCard'
import { useResponse } from '@/lib/providers'
import AppHooks from '@/hooks'

type IData = { value: string | undefined; error: string | undefined }

export default function SendCryptoScreen() {
  const { transferERC20, transferNative } = AppHooks.useTxn()
  const [recipient, setRecipient] = useState<IData>()
  const [amount, setAmount] = useState<IData>()
  const [tokenErr, setTokenErr] = useState<string>()
  const storeTokens = AppStores.useTokens()
  const token = storeTokens.activeToken
  const response = useResponse()
  // const theme = AppHooks.useColor()

  const handleSend = async () => {
    if (recipient === undefined || recipient.value === undefined) {
      setRecipient((prev) => {
        return { error: 'Enter a wallet address', value: prev?.value }
      })
      return
    }

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

    response.showLoading(true)
    if (token?.symbol === 'CELO') {
      transferNative({
        recipient: recipient.value,
        amount: amount.value,
      })
        .then(() => {
          response.showSuccess('Transaction Successful')
          setAmount({ value: '', error: undefined })
        })
        .catch(() => {
          response.showError('Transaction Failed')
        })

      return
    } else {
      transferERC20({
        recipient: recipient.value,
        amount: amount.value,
        token: token!.address,
      })
        .then((hash) => {
          console.log('Transaction Hash:', hash)
          response.showSuccess('Transaction Successful')
          setAmount({ value: '', error: undefined })
        })
        .catch((e) => {
          console.log(e)
          console.log(JSON.stringify(e))
          response.showError(e.message)
        })
        .finally(() => {
          response.showLoading(false)
        })
    }
  }

  return (
    <TView style={{ width: '100%', rowGap: 20 }}>
      <InputText
        label={'Wallet Address'}
        keyboardType="default"
        placeholder={'Enter wallet address'}
        value={recipient?.value?.toUpperCase() || ''}
        error={recipient?.error}
        // value={formData.email}
        onChangeText={(t) => setRecipient({ value: t, error: undefined })}
        // error={errors!.email === undefined ? undefined : errors!.email}
        onTrailingIconPress={async () => {
          const text = await ClipboardGet()

          setRecipient({ value: text, error: undefined })
          console.log(text)
        }}
        trailingIcon={<FontAwesome6 name="paste" size={20} color={'#fff'} />}
      />
      <SelectTokenCard />
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
