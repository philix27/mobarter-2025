import HeaderBar from "@/components/Header";
import { useLocalSearchParams } from "expo-router";

export default function CoinInfo(props: { title: string; symbol: string }) {
  const { id, title } = useLocalSearchParams();
  const { coinId, pageTitle } = convertParamToInt(title, id);
  return (
    <>
      <HeaderBar title={pageTitle} />
      <CoinInfo title={pageTitle} symbol={coinId} />
    </>
  );
}

function convertParamToInt(title: string | string[], id: string | string[]) {
  const pageTitle = title as string;
  const sgroupId = id as string;
  const coinId = sgroupId;
  return { coinId, pageTitle };
}
