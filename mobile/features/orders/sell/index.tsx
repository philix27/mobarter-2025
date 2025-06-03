import { toast, TView } from '@/components'
import { InputButton, InputText } from '@/components/forms'
import { AppStores } from '@/lib'
import React, { useState } from 'react'
import { useTransferToken } from '@/lib/zustand/web3/hooks'
import { PayableTokenCard } from '@/features/tokens'
import { SelectBankAccountCard } from '@/features/bankAccount'
import { usePrice } from '@/hooks/usePrice'
import { TText } from '@/components/ui'
import { useCountry } from '@/hooks'
import { BtmSheet } from '@/components/layout'
import { useBankAccount } from '@/features/bankAccount/zustand.bank'
import { formatEtherBalance } from '@/lib/string'

type IData = { value: string | undefined; error: string | undefined }
export default function SellCryptoOrder() {
  const confirmModal = BtmSheet.useRef()
  const { transferERC20 } = useTransferToken()
  const [amount, setAmount] = useState<IData>()
  const [tokenErr, setTokenErr] = useState<string>()
  const storeTokens = AppStores.useTokens()
  const token = storeTokens.activeToken
  const { handleOnChange: handlePriceChange, amountToPay } = usePrice()
  const { currencySymbol } = useCountry()
  const account = useBankAccount()

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
    // todo: Check for bank account

    confirmModal.current.open()

    // await sendTransaction({ transaction, account: '0x3231' });
  }

  const onConfirm = () => {
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
      .then((e) => {
        toast.success('Sent successfully')
      })
      .catch(() => {
        toast.error('Could not transfer funds')
      })
  }
  return (
    <TView style={{ width: '100%', rowGap: 20 }}>
      <PayableTokenCard tokenErr={tokenErr} />
      <SelectBankAccountCard tokenErr={tokenErr} />
      <InputText
        label={'Amount'}
        keyboardType="numeric"
        placeholder={'0.00'}
        leadingText={currencySymbol}
        value={amount?.value || ''}
        error={amount?.error}
        onChangeText={(text) => {
          if (text.length > 12) {
            return
          }
          setAmount({ value: text, error: undefined })
          handlePriceChange(parseFloat(text))
        }}
        inputStyle={{ fontWeight: '700' }}
      />
      <TView style={{ alignItems: 'center', justifyContent: 'center' }}>
        <TText style={{ marginBottom: 20 }}>{amountToPay}</TText>
        <InputButton title="Send" onPress={handleSend} style={{ width: '50%' }} />
      </TView>
      <BtmSheet.Modal title="Confirm Transaction" ref={confirmModal!}>
        <BtmSheet.Row text1="You receive" text2={`${currencySymbol} ${amount?.value}` || ''} />
        <BtmSheet.Row text1="You pay" text2={`${amountToPay} ${storeTokens.activeToken?.symbol}`} />
        <BtmSheet.Row text1="Account Number" text2={account.activeAccount?.account_no || ''} />
        <BtmSheet.Row text1="Account Name" text2={account.activeAccount?.account_name || ''} />
        <BtmSheet.Row text1="Bank" text2={account.activeAccount?.bank_name || ''} />
        <TView style={{ height: 25 }} />
        <TView style={{ alignSelf: 'center', alignItems: 'center' }}>
          <InputButton title={'Confirm'} onPress={onConfirm} />
        </TView>
      </BtmSheet.Modal>
    </TView>
  )
}
