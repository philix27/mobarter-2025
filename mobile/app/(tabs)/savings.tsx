import {HeaderBar} from '@/components/layout/Header'
import SavingsScreen from '@/features/savings'

export default function Page() {
  return (
    <>
      <HeaderBar title="Savings" />
      <SavingsScreen />;
    </>
  )
}
