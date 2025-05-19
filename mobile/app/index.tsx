import { Image, StyleSheet, View, useColorScheme } from 'react-native';
import { ParallaxScrollView } from '@/components/ParallaxScrollView';
import { ThemedButton } from '@/components/ThemedButton';
import { ThemedText } from '@/components/ThemedText';
import { chain, client } from '@/constants/thirdweb';
import { useEffect, useState } from 'react';
import {
  ConnectEmbed,
  useActiveAccount,
  useActiveWallet,
  useConnect,
  useDisconnect,
} from 'thirdweb/react';
import { shortenAddress } from 'thirdweb/utils';
import { getUserEmail, inAppWallet } from 'thirdweb/wallets/in-app';
import { router } from 'expo-router';
import { baseSepolia, ethereum } from 'thirdweb/chains';
import { createAuth } from 'thirdweb/auth';
import SavingsScreen from '@/features/savings';

const wallets = [
  inAppWallet({
    auth: {
      options: ['google'],
      passkeyDomain: 'thirdweb.com',
    },
    smartAccount: {
      chain: baseSepolia,
      sponsorGas: true,
    },
  }),
];

const thirdwebAuth = createAuth({
  domain: 'localhost:3000',
  client,
});

// fake login state, this should be returned from the backend
let isLoggedIn = false;

export default function HomeScreen() {
  const account = useActiveAccount();
  const theme = useColorScheme();

  //  router.replace("/(tabs)/home");
  if (account) {
    router.replace('/(tabs)/home');
  }

  // return <SavingsScreen />;
  return (
    <ParallaxScrollView
      headerBackgroundColor={{ light: '#A1CEDC', dark: '#1D3D47' }}
      headerImage={
        <Image
          source={require('@/assets/images/title.png')}
          style={styles.reactLogo}
        />
      }
    >
      <ConnectEmbed
        client={client}
        theme={theme || 'dark'}
        chain={ethereum}
        wallets={wallets}
        auth={{
          async doLogin(params) {
            // fake delay
            await new Promise(resolve => setTimeout(resolve, 2000));
            const verifiedPayload = await thirdwebAuth.verifyPayload(params);
            isLoggedIn = verifiedPayload.valid;
          },
          async doLogout() {
            isLoggedIn = false;
          },
          async getLoginPayload(params) {
            return thirdwebAuth.generatePayload(params);
          },
          async isLoggedIn(address) {
            return isLoggedIn;
          },
        }}
      />

      <CustomConnectUI />
    </ParallaxScrollView>
  );
}

const CustomConnectUI = () => {
  const wallet = useActiveWallet();
  const account = useActiveAccount();
  const [email, setEmail] = useState<string | undefined>();
  const { disconnect } = useDisconnect();
  useEffect(() => {
    if (wallet && wallet.id === 'inApp') {
      getUserEmail({ client }).then(setEmail);
    }
  }, [wallet]);

  return wallet && account ? (
    <View>
      <ThemedText>Connected as {shortenAddress(account.address)}</ThemedText>
      {email && <ThemedText type="subtext">{email}</ThemedText>}
      <View style={{ height: 16 }} />
      <ThemedButton onPress={() => disconnect(wallet)} title="Disconnect" />
    </View>
  ) : (
    <>
      <ConnectWithGoogle />
    </>
  );
};

const ConnectWithGoogle = () => {
  const { connect, isConnecting } = useConnect();
  return (
    <ThemedButton
      title="Connect with Google"
      loading={isConnecting}
      loadingTitle="Connecting..."
      onPress={() => {
        connect(async () => {
          const w = inAppWallet({
            smartAccount: {
              chain,
              sponsorGas: true,
            },
          });
          await w.connect({
            client,
            strategy: 'google',
          });
          return w;
        });
      }}
    />
  );
};

const styles = StyleSheet.create({
  titleContainer: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 8,
  },
  stepContainer: {
    gap: 8,
    marginBottom: 8,
  },
  reactLogo: {
    height: '100%',
    width: '100%',
    bottom: 0,
    left: 0,
    position: 'absolute',
  },
  rowContainer: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    gap: 24,
    justifyContent: 'space-evenly',
  },
  tableContainer: {
    width: '100%',
  },
  tableRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    marginBottom: 4,
  },
  leftColumn: {
    flex: 1,
    textAlign: 'left',
  },
  rightColumn: {
    flex: 1,
    textAlign: 'right',
  },
});
