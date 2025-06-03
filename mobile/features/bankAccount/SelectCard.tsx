import { BtmSheet } from '@/components/layout'
import { ITokenCategory } from '../market/AssetsCrypto'
import { TView, Row } from '@/components'
import { Label, ErrMsg } from '@/components/forms'
import { useColor, AppStores } from '@/lib'
import { useBankAccount } from './zustand.bank'
import { Ionicons } from '@expo/vector-icons'
import { BankAccounts } from './BankAccounts'

export function SelectBankAccountCard({
  tokenErr,
  ...props
}: {
  tokenErr: string | undefined
  group?: ITokenCategory
}) {
  const confirmModal = BtmSheet.useRef()
  const theme = useColor()
  const storeTokens = AppStores.useTokens()

  const account = useBankAccount()

  return (
    <>
      <TView>
        <Label label="Destination Account" />
        <Row
          title={account.activeAccount?.account_name || 'Select an account'}
          desc={`${account.activeAccount?.bank_name} | ${account.activeAccount?.account_no}`}
          trailing={<Ionicons name="caret-down" size={20} color={theme.muted} />}
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
          height: '45%',
        }}
      >
        <BankAccounts />
      </BtmSheet.Modal>
    </>
  )
}
