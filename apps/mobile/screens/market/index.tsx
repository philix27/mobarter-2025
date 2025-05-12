import Balance from './Balance';
import QuickActions from './QuickActions';
import { AppStores } from '@/lib/zustand';
import AssetsCrypto from './Assets/AssetsCrypto';
import AssetsFiat from './Assets/AssetsFiat';
import { TView } from '@/components/TView';
import Wrapper from '@/components/Wrapper';

export default function MarketScreen() {
  const store = AppStores.useView();
  // const appColor = useColor();
  return (
    <Wrapper>
      <TView style={{ width: '100%' }}>
        <Balance />
        <QuickActions />
        {/* <AssetsTab /> */}
        <TView style={{ height: 15 }} />
        {store.activeViewAsset === 'Fiat' && <AssetsFiat />}
        {store.activeViewAsset === 'Crypto' && <AssetsCrypto />}
      </TView>
    </Wrapper>
  );
}
