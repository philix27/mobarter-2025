import { RBSheetRef } from 'react-native-raw-bottom-sheet'
import { BtmSheet } from '@/components/layout'
import { CryptoTokensList, ITokenCategory } from '../market/AssetsCrypto'
import ErrMsg from '@/components/forms/ErrMsg'
import React, { useRef } from 'react'
import { TView, Row } from '@/components'
import { InputButton, Label } from '@/components/forms'
import { useColor, AppStores } from '@/lib'
import { Ionicons } from '@expo/vector-icons'
import { useBankAccountList } from '@/graphql/endpoints/api.bankAccount'
import { TText } from '@/components/ui'
import { useBankAccount } from './zustand.bank'
import { router } from 'expo-router'

export function SelectBankAccountCard({
  tokenErr,
  ...props
}: {
  tokenErr: string | undefined
  group?: ITokenCategory
}) {
  const { data, loading } = useBankAccountList()
  const theme = useColor()
  const storeTokens = AppStores.useTokens()
  const token = storeTokens.activeToken
  const confirmModal = useRef<RBSheetRef>(null)
  const account = useBankAccount()

  return (
    <>
      <TView>
        <Label label="Destination Account" />
        <Row
          title={account.activeAccount?.account_name || 'Select an account'}
          desc={account.activeAccount?.account_no}
          trailing={<TText>{account.activeAccount?.bank_name}</TText>}
          onClick={() => {
            confirmModal.current.open()
          }}
        />
        {tokenErr && <ErrMsg msg={tokenErr} />}
      </TView>
      <BtmSheet.Modal
        title="Select your bank account"
        ref={confirmModal!}
        style={{
          width: '100%',
        }}
      >
        {data && data.bankAccount_getAll.length > 0 ? (
          data?.bankAccount_getAll.map((act, i) => (
            <Row
              key={i}
              title={act.account_name}
              desc={act.account_no}
              trailing={<TText>{act.bank_name}</TText>}
              onClick={() => {
                account.update({ activeAccount: act })
              }}
            />
          ))
        ) : (
          <TView
            style={{
              flexDirection: 'column',
              alignItems: 'center',
              height: '50%',
              rowGap: 20,
              paddingVertical: 10,
            }}
          >
            <TText muted>No account found</TText>
            <InputButton
              title="Add an account"
              style={{ width: '50%' }}
              onPress={() => {
                confirmModal.current.close()
                router.push('/bank/add')
              }}
            />
          </TView>
        )}
      </BtmSheet.Modal>
    </>
  )
}
