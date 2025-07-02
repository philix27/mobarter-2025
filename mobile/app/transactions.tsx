import { HeaderBar } from '@/components/layout/Header'
import TransactionsScreen from '@/features/transactions/Screen'

export default function Page() {
  return (
    <>
      <HeaderBar title="Transactions" showBackBtn backTo="/home" />
      <TransactionsScreen />
    </>
  )
}
