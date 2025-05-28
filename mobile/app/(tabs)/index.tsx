import { HeaderBar } from '@/components/layout'
import MarketScreen from '@/features/market'

export default function HomeScreen() {
  return (
    <>
      <HeaderBar title="Wallet" />
      <MarketScreen />
    </>
  )
}
