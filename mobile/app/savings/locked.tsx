import { HeaderBar } from '@/components/layout/Header'
import FixedDepositPage from '@/features/savings/fixed'

export default function Page() {
  return (
    <>
      <HeaderBar title="Fixed Deposit" showBackBtn backTo="/(tabs)/savings" />
      <FixedDepositPage />
    </>
  )
}
