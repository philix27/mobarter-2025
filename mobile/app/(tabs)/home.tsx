import HeaderBar from '@/components/Header';
import MarketScreen from '@/features/market';

export default function HomeScreen() {
  return (
    <>
      <HeaderBar title="Wallet" />
      <MarketScreen />
    </>
  );
}
