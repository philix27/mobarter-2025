import { Wrapper } from '@/components'
import { HeaderBar } from '@/components/layout/Header'
import { BankAccounts } from '@/features/bankAccount'

export default function Page() {
  return (
    <>
      <HeaderBar title="Add a bank account" showBackBtn />
      <Wrapper>
        <BankAccounts />
      </Wrapper>
    </>
  )
}
