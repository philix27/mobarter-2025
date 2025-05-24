import Wrapper from 'src/components/wrapper/Wrapper'
import SellCrypto from 'src/features/orders/SellCrypto'

export default function Page() {
  return (
    <Wrapper hideBottomNav>
      <SellCrypto />
    </Wrapper>
  )
}
