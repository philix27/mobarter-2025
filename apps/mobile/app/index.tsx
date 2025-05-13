import { LoadingIndicator } from '@/components/Loading';
import { TText } from '@/components/TText';
import { AppStores } from '@/lib';
import { Link, router } from 'expo-router';
import { useEffect } from 'react';
import { SafeAreaView, View } from 'react-native';

export default function Page() {
  const store = AppStores.useUserInfo();
  // useEffect(() => {
  //   if (!store.email) {
  //     setTimeout(() => {
  //       router.push('/auth/sign-in');
  //     }, 100);
  //   } else {
  //     setTimeout(() => {
  //       router.push('/(tabs)/home');
  //     }, 100);
  //   }
  // });

  //  const { isReady } = usePrivy();

  //  if (!isReady) {
  //    return <LoadingIndicator />;
  //  }

  // Now it's safe to use other Privy hooks and state
  // return <YourAuthenticatedContent />;

  return (
    <SafeAreaView
      style={{
        height: '100%',
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
        backgroundColor: '#000',
      }}
    >
      <View style={{ gap: 20 }}>
        <Link href="/">
          <TText type="subtitle">Home</TText>
        </Link>

        <Link href="/(tabs)/home">
          <TText type="subtitle">Market</TText>
        </Link>
        <Link href="/(tabs)/p2p">
          <TText type="subtitle">P2P</TText>
        </Link>
      </View>
    </SafeAreaView>
  );
}
