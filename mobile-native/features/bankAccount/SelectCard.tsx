import { BtmSheet } from '@/components/layout'
import { ITokenCategory } from '../market/AssetsCrypto'
import { TView, Row } from '@/components'
import { Label, ErrMsg } from '@/components/forms'
import { AppStores } from '@/lib'
import { useBankAccount } from './zustand.bank'
import { Ionicons } from '@expo/vector-icons'
import { BankAccounts } from './BankAccounts'
import { useColor } from '@/hooks'

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
  let desc = () => {
    let _desc = `${account.activeAccount?.bank_name} | ${account.activeAccount?.account_no}`

    if (_desc === 'undefined | undefined' || _desc === undefined) {
      _desc = 'Please select an account'
    }

    return _desc
  }

  return (
    <>
      <TView>
        <Label label="Destination Account" />
        <Row
          title={account.activeAccount?.account_name || 'Select an account'}
          desc={desc()}
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
