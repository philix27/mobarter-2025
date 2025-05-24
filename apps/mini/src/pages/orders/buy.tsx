import Wrapper from 'src/components/wrapper/Wrapper'

import BuyCrypto from '@/src/features/orders/BuyCrypto'

export default function Page() {
  return (
    <Wrapper hideBottomNav>
      <BuyCrypto />
    </Wrapper>
  )
}
