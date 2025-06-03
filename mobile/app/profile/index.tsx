import { HeaderBar } from '@/components/layout/Header'
import ProfileScreen from '@/features/settings/Profile'

export default function Page() {
  return (
    <>
      <HeaderBar title="Profile" showBackBtn backTo="/" />
      <ProfileScreen />
    </>
  )
}
