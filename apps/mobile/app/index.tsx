import { TText } from '@/components/TText';
import { client } from '@/constants/thirdweb';
import { Link } from 'expo-router';
import React from 'react';
import { SafeAreaView, View, StyleSheet } from 'react-native';
import { createAuth } from 'thirdweb/auth';
import { baseSepolia, ethereum } from 'thirdweb/chains';
import {
  ConnectButton,
  ConnectEmbed,
  lightTheme,
  useActiveAccount,
  useActiveWallet,
  useConnect,
  useDisconnect,
} from 'thirdweb/react';
import { shortenAddress } from 'thirdweb/utils';
import { createWallet } from 'thirdweb/wallets';
import {
  getUserEmail,
  hasStoredPasskey,
  inAppWallet,
} from 'thirdweb/wallets/in-app';

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

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'flex-start',
  },
  buttonStyle: {
    backgroundColor: 'rgba(78, 116, 289, 1)',
    borderRadius: 3,
    margin: 10,
    height: 30,
    width: 300,
    justifyContent: 'center',
  },
  textStyle: {
    color: 'white',
    textAlign: 'center',
  },
});
