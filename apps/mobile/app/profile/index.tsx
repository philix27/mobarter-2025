import { HeaderBar } from '@/components/layout/Header'
import ProfileScreen from '@/features/profile/Profile'

export default function Page() {
  return (
    <>
      <HeaderBar title="Profile" showBackBtn backTo="/" />
      <ProfileScreen />
    </>
  )
}
