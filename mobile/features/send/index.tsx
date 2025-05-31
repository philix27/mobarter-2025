import { Row, TView } from '@/components'
import { InputButton, InputText, Label } from '@/components/forms'
import { AppStores, ClipboardGet } from '@/lib'
import { FontAwesome6, Ionicons } from '@expo/vector-icons'
import { useColor } from '@/hooks/useColor'
import React, { useRef, useState } from 'react'
import { useTransferToken } from '@/lib/zustand/web3/hooks'
import { RBSheetRef } from 'react-native-raw-bottom-sheet'
import { BtmSheet } from '@/components/layout'
import { CryptoTokensList } from '../market/AssetsCrypto'
import ErrMsg from '@/components/forms/ErrMsg'

type IData = { value: string | undefined; error: string | undefined }
export default function SendCryptoScreen() {
  const { transferNative, transferERC20 } = useTransferToken()
  const theme = useColor()
  const [recipient, setRecipient] = useState<IData>()
  const [amount, setAmount] = useState<IData>()
  const [tokenErr, setTokenErr] = useState<string>()
  const confirmModal = useRef<RBSheetRef>(null)
  const storeTokens = AppStores.useTokens()
  const token = storeTokens.activeToken
  // const transaction = transfer({
  //   contract: {
  //     client: undefined,
  //     address: '0x454',
  //     chain: celo,
  //   },
  //   to: '0x...',
  //   amount: 100,
  // });

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

    if (token?.symbol === 'CELO') {
      transferNative({
        recipient: recipient.value,
        amount: amount.value,
      })
      return
    }

    transferERC20({
      recipient: recipient.value,
      amount: amount.value,
      token: token!.address,
    })
    // await sendTransaction({ transaction, account: '0x3231' });
  }
  return (
    <TView style={{ width: '100%', rowGap: 20 }}>
      <InputText
        label={'Wallet Address'}
        keyboardType="default"
        placeholder={'Enter wallet address'}
        value={recipient?.value || ''}
        error={recipient?.error}
        // value={formData.email}
        onChangeText={(t) => setRecipient({ value: t, error: undefined })}
        // error={errors!.email === undefined ? undefined : errors!.email}
        onTrailingIconPress={async () => {
          const text = await ClipboardGet()

          setRecipient({ value: text, error: undefined })
          console.log(text)
        }}
        trailingIcon={<FontAwesome6 name="paste" size={20} color={theme.muted} />}
      />
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
        // error={errors!.email === undefined ? undefined : errors!.email}
      />
      <TView>
        <Label label="Currency" />
        <Row
          title={token?.name ? token.name : 'Select token'}
          imgUrl={token?.logoUrl}
          desc={`Available: ${token?.balance} ${token?.symbol}`}
          trailing={<Ionicons name="caret-down" size={20} color={theme.muted} />}
          onClick={() => {
            confirmModal.current.open()
          }}
          // style={{ marginBottom: 0, borderBottomEndRadius: 0, borderRadius: 0 }}
        />
        {tokenErr && <ErrMsg msg={tokenErr} />}
      </TView>
      <TView style={{ alignItems: 'center', justifyContent: 'center' }}>
        <InputButton title="Send" onPress={handleSend} style={{ width: '50%' }} />
      </TView>
      <BtmSheet.Modal
        title="Select a token"
        ref={confirmModal!}
        style={{
          // alignItems: 'center',
          // flexDirection: 'column',
          // paddingBottom: 80,
          width: '100%',
        }}
      >
        <CryptoTokensList />
      </BtmSheet.Modal>
    </TView>
  )
}
