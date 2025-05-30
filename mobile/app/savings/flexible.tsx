import { HeaderBar } from '@/components/layout/Header'
import FlexibleSavingsPage from '@/features/savings/flexible'

export default function Page() {
  return (
    <>
      <HeaderBar title="Flexible Savings" showBackBtn backTo="/savings" />
      <FlexibleSavingsPage />
    </>
  )
}
