import { Wrapper } from '@/components'
import { HeaderBar } from '@/components/layout'
import SelfVerification from '@/features/profile/self'

export default function Page() {
  return (
    <Wrapper>
      <HeaderBar title="Self Protocol" />
      <SelfVerification />
    </Wrapper>
  )
}
