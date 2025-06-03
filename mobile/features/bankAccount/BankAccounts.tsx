import { TView, Row } from '@/components'
import { InputButton } from '@/components/forms'
import { TText } from '@/components/ui'
import { useBankAccount } from './zustand.bank'
import { router } from 'expo-router'
import { ActivityIndicator } from 'react-native'
import { useBankAccountList } from './api.bank'

export function BankAccounts() {
  const { data, loading } = useBankAccountList()
  const account = useBankAccount()

  if (loading) return <ActivityIndicator />

  return (
    <>
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
              router.push('/bank/add')
            }}
          />
        </TView>
      )}
    </>
  )
}
