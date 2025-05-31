import { Wrapper } from '@/components'
import { HeaderBar } from '@/components/layout/Header'
import BuyCryptoOrder from '@/features/orders/buy'

export default function Page() {
  return (
    <>
      <HeaderBar title="Buy crypto" showBackBtn backTo="/home" />
      <Wrapper>
        <BuyCryptoOrder />
      </Wrapper>
    </>
  )
}
