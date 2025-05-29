import { TView } from '@/components'
import { InputButton, InputText } from '@/components/forms'
import { ClipboardGet } from '@/lib'
import { FontAwesome6 } from '@expo/vector-icons'
import { useColor } from '@/hooks/useColor'
import React, { useState } from 'react'
import { useTransferToken } from '@/lib/zustand/web3/hooks'

export default function SendCryptoScreen() {
  const { transferNative } = useTransferToken()
  const theme = useColor()
  const [recipient, setWalletAddress] = useState('')
  const [amount, setAmount] = useState('')

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
    transferNative({
      recipient,
      amount,
    })

    // await sendTransaction({ transaction, account: '0x3231' });
  }
  return (
    <TView style={{ width: '100%' }}>
      <InputText
        label={'Wallet Address'}
        keyboardType="default"
        placeholder={'Enter wallet address'}
        value={recipient}
        // value={formData.email}
        // onChangeText={(text) => handleChange("email", text.toLowerCase())}
        // error={errors!.email === undefined ? undefined : errors!.email}
        onTrailingIconPress={async () => {
          const text = await ClipboardGet()
          setWalletAddress(text)

          console.log(text)
        }}
        trailingIcon={<FontAwesome6 name="paste" size={20} color={theme.muted} />}
      />
      <InputText
        label={'Amount'}
        keyboardType="numeric"
        placeholder={'Enter amount'}
        value={amount}
        onChangeText={(text) => setAmount(text)}
        // error={errors!.email === undefined ? undefined : errors!.email}
      />
      <TView style={{ alignItems: 'center', justifyContent: 'center' }}>
        <InputButton title="Send" onPress={() => {}} style={{ width: '50%' }} />
      </TView>
    </TView>
  )
}
