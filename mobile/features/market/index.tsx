import Balance from './Balance'
import QuickActions from './QuickActions'
import { AppStores } from '@/lib/zustand'
import AssetsCrypto from './AssetsCrypto'
import { TView } from '@/components/ui/TView'
import { Wrapper } from '@/components/layout'
import AssetsTab from './AssetsTab'

export default function MarketScreen() {
  return (
    <Wrapper>
      <TView style={{ width: '100%' }}>
        <Balance />
        <QuickActions />
        <TView style={{ height: 15 }} />
        <AssetsTab />

        <AssetsCrypto />
      </TView>
    </Wrapper>
  )
}
