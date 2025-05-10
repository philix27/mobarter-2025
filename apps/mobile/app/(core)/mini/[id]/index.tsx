import HeaderBar from '@/components/Header';
import WebApp from '@/screens/mini/WebApp';
import { useLocalSearchParams } from 'expo-router';

export default function CoinInfo(props: { title: string; symbol: string }) {
  const { id, title } = useLocalSearchParams();
  const { appId, pageTitle } = convertParamToInt(title, id);
  return (
    <>
      <HeaderBar title={pageTitle} showBackBtn />
      <WebApp id={appId} />
    </>
  );
}

function convertParamToInt(title: string | string[], id: string | string[]) {
  const pageTitle = title as string;
  const sgroupId = id as string;
  const appId = sgroupId;
  return { appId, pageTitle };
}
