import { HeaderBar } from '@/components/layout/Header'
import SettingsScreen from '@/features/settings'

export default function Page() {
  return (
    <>
      <HeaderBar title="Settings" showBackBtn backTo="/" />
      <SettingsScreen />
    </>
  )
}
