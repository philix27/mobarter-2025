import { Wrapper } from '@/components'
import { HeaderBar } from '@/components/layout/Header'
import { BankAccounts } from '@/features/bankAccount'

export default function Page() {
  return (
    <>
      <HeaderBar title="Bank Accounts" showBackBtn />
      <Wrapper>
        <BankAccounts />
      </Wrapper>
    </>
  )
}
