import { Wrapper } from '@/components'
import { HeaderBar } from '@/components/layout/Header'
import SellCryptoOrder from '@/features/orders/sell'

export default function Page() {
  return (
    <>
      <HeaderBar title="Sell crypto" showBackBtn backTo="/home" />
      <Wrapper>
        <SellCryptoOrder />
      </Wrapper>
    </>
  )
}
