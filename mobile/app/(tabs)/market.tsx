import HeaderBar from "@/components/Header";
import MarketScreen from "@/components/screens/market";

export default function MarketPage() {
  return (
    <>
      <HeaderBar title="Market" hideBack />
      <MarketScreen />
    </>
  );
}
