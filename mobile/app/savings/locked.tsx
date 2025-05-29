import { HeaderBar } from '@/components/layout/Header'
import LockedSavingsPage from '@/features/savings/locked'

export default function Page() {
  return (
    <>
      <HeaderBar title="Time Lock" />
      <LockedSavingsPage />
    </>
  )
}
