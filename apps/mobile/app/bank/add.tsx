import { Wrapper } from '@/components'
import { HeaderBar } from '@/components/layout/Header'
import { AddBankAccount } from '@/features/bankAccount/AddAccount'

export default function Page() {
  return (
    <>
      <HeaderBar title="Add a bank account" showBackBtn />
      <Wrapper>
        <AddBankAccount />
      </Wrapper>
    </>
  )
}
