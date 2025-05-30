import { HeaderBar } from '@/components/layout'
import MarketScreen from '@/features/market'

export default function Page() {
  return (
    <>
      <HeaderBar title="Wallet" />
      <MarketScreen />
    </>
  )
}
