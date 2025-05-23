import { TText } from '@/components/TText';
import { Link } from 'expo-router';
import React from 'react';
import { SafeAreaView, View } from 'react-native';

// fake login state, this should be returned from the backend
let isLoggedIn = false;

export default function Page() {
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
