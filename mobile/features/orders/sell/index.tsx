import { toast, TView } from '@/components'
import { InputButton, InputText } from '@/components/forms'
import { AppStores } from '@/lib'
import React, { useState } from 'react'
import { useAddress, useTransferToken } from '@/lib/zustand/web3/hooks'
import { PayableTokenCard } from '@/features/tokens'
import { SelectBankAccountCard } from '@/features/bankAccount'
import { TText } from '@/components/ui'
import { useCollectors, usePrice } from '@/hooks'
import { BtmSheet } from '@/components/layout'
import { useBankAccount } from '@/features/bankAccount/zustand.bank'
import { SelectCountryCard } from '@/features/country'
import { useSellCrypto } from './useSellCrypto'
import { Country, OrderActions, OrderMode, OrderStatus, TradeType } from '@/graphql'

type IData = { value: string | undefined; error: string | undefined }

export default function SellCryptoOrder() {
  const confirmModal = BtmSheet.useRef()
  const { transferERC20 } = useTransferToken()
  const [amountFiat, setAmount] = useState<IData>()
  const [tokenErr, setTokenErr] = useState<string>()
  const storeTokens = AppStores.useTokens()
  const storeCountries = AppStores.useCountries()
  const country = storeCountries.activeCountry
  const address = useAddress()
  // const balance = useTokenBalance(TokenId.cUSD)
  const token = storeTokens.activeToken
  const { handleOnChange: handlePriceChange, amountToPay } = usePrice()
  const account = useBankAccount()
  const { offRamp } = useCollectors()

  const [mutate] = useSellCrypto()

  const handleSend = async () => {
    if (amountFiat === undefined || amountFiat.value === undefined) {
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
    if (amountFiat === undefined || amountFiat.value === undefined) {
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
      recipient: offRamp,
      amount: amountFiat.value,
      token: token!.address,
    })
      .then(async (txn_hash) => {
        toast.success('Sent successfully')

        // send to bank account
        // todo: lock funds in escrow first.
        await mutate({
          variables: {
            input: {
              amount_fiat: parseInt(amountFiat.value!),
              amount_crypto: amountToPay!,
              currency_fiat: Country.Ng,
              currency_crypto: storeTokens.activeToken!.name,
              estimated_duration: `EXPRESS`,
              trade_type: TradeType.Sell!,
              status: OrderStatus.Pending,
              action_user: OrderActions.LockCrypto,
              merchant_id: 1,
              wallet_customer: address,
              wallet_merchant: offRamp,
              txn_hash: txn_hash,
              mode: OrderMode.Express,
              bank_id: 1,
              currency_network: '42221',
            },
          },
          onCompleted() {
            toast.success('Success! Order created')
          },
          onError() {
            toast.error('Could not create order')
          },
          refetchQueries: [],
        })
      })
      .catch(() => {
        toast.error('Could not transfer funds')
      })
  }

  const validateAmount = () => {
    if (!storeTokens.activeToken) return undefined
    const _tokenBal = parseFloat(storeTokens.activeToken.balance)
    if (_tokenBal <= 0) return undefined
    if (amountToPay === undefined) return undefined

    if (_tokenBal < amountToPay) return 'Amount is less than your balance'
    return undefined
  }

  return (
    <TView style={{ width: '100%', rowGap: 20 }}>
      <PayableTokenCard tokenErr={tokenErr} />
      <SelectBankAccountCard tokenErr={tokenErr} />
      <SelectCountryCard />
      <InputText
        label={'You receive'}
        keyboardType="numeric"
        placeholder={'0.00'}
        leadingText={country?.currencySymbol}
        value={amountFiat?.value || ''}
        error={amountFiat?.error || validateAmount()}
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
        <TText style={{ marginBottom: 0 }}>You pay</TText>
        <TText style={{ marginBottom: 20, fontWeight: '800' }}>
          {roundUp(amountToPay as number)} {storeTokens.activeToken?.symbol}
        </TText>
        <InputButton title="Send" onPress={handleSend} style={{ width: '50%' }} />
      </TView>
      <BtmSheet.Modal title="Confirm Transaction" ref={confirmModal!}>
        <BtmSheet.Row
          text1="You receive"
          text2={`${country?.currencySymbol} ${amountFiat?.value}`}
        />
        <BtmSheet.Row
          text1="You pay"
          text2={`${roundUp(amountToPay as number)} ${storeTokens.activeToken?.symbol}`}
        />
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

function roundUp(number: number) {
  const decimal = Math.round((number + Number.EPSILON) * 1000) / 1000
  return formatCurrency(decimal)
}

function formatCurrency(number: number) {
  if (isNaN(number)) {
    return 'Invalid Input'
  }
  const numString = Number(number).toFixed(2)
  const [integerPart, decimalPart] = numString.split('.')
  const formattedInteger = integerPart.replace(/\B(?=(\d{3})+(?!\d))/g, ',')
  return `${formattedInteger}.${decimalPart}`
}
