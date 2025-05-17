import { TText } from '@/components/TText';
import { chain, client } from '@/constants/thirdweb';
import { Link } from 'expo-router';
import React from 'react';
import { Button, SafeAreaView, View } from 'react-native';
import { createAuth } from 'thirdweb/auth';
import { baseSepolia } from 'thirdweb/chains';
import { useActiveAccount, useConnect } from 'thirdweb/react';
import { inAppWallet } from 'thirdweb/wallets/in-app';

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

export default function Page() {
  const account = useActiveAccount();
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
      <ConnectWithGoogle />
      {account && (
        <TText>
          ConnectEmbed does not render when connected, use the `onConnect` prop
          to navigate to a new screen instead.
        </TText>
      )}
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

const ConnectWithGoogle = () => {
  const { connect, isConnecting } = useConnect();
  return (
    <Button
      title="Connect with Google"
      disabled={isConnecting}
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
