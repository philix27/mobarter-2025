import HeaderBar from "@/components/Header";
import { AppStores } from "@/lib";
import AdvertScreen from "@/screens/advert";

export default function Page() {
  const store = AppStores.useAdvert();
  const salesType = store.tradeType === "BUY" ? "Buy" : "Sell";
  return (
    <>
      <HeaderBar title={`${salesType} Advert`} showBackBtn />
      <AdvertScreen />
    </>
  );
}
