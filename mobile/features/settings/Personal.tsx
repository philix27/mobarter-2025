import { AppStores } from '@/lib/zustand'
import { InputButton } from '@/components/forms'
import { InfoRow,  } from './Card'

export default function Personal() {
  const store = AppStores.useUserInfo()
  return (
    <>
      <InfoRow title="First name:" title2={store.firstname} />
      <InfoRow title="Last name:" title2={store.lastname} />
      <InfoRow title="Middle name:" title2={store.middlename!} />
      <InfoRow title="Email:" title2={store.email} />
      {/* <InfoRow title="Country" title2={store.country!} /> */}
      <InfoRow title="Phone" title2={''} />
      <InputButton title="Manage" />
    </>
  )
}
