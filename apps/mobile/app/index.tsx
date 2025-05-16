import { LoadingIndicator } from '@/components/Loading';
import { TText } from '@/components/TText';
import { AppStores } from '@/lib';
import { Link, router } from 'expo-router';
import { useEffect } from 'react';
import React from 'react';
import {
  SafeAreaView,
  Button,
  View,
  Alert,
  TouchableOpacity,
  FlatList,
  StyleSheet,
} from 'react-native';
import { ChainInfo, Ethereum } from '@particle-network/chains';

import {
  Env,
  LoginType,
  ParticleInfo,
  SocialLoginPrompt,
  SupportAuthType,
  WalletDisplay,
  CommonError,
} from '@particle-network/rn-base';

import { WalletType } from '@particle-network/rn-connect';
import * as particleConnect from '@particle-network/rn-connect';
import * as particleWallet from '@particle-network/rn-wallet';
import * as particleAuthCore from '@particle-network/rn-auth-core';
import Toast from 'react-native-toast-message';
//* Implement Particle Network Account
export class PNAccount {
  static walletType: WalletType = WalletType.AuthCore;

  icons: string[];
  name: string;
  publicAddress: string;
  url: string;

  constructor(
    icons: string[],
    name: string,
    publicAddress: string,
    url: string,
  ) {
    this.icons = icons;
    this.name = name;
    this.publicAddress = publicAddress;
    this.url = url;
  }

  static parseFrom(params: string): PNAccount {
    return JSON.parse(params) as PNAccount;
  }
}

export async function init() {
  // Get your project id and client from dashboard,
  // https://dashboard.particle.network/

  ParticleInfo.projectId = 'f0a0ce51-b133-4e74-8c4c-464376e60ff3';
  ParticleInfo.clientKey = 'clydzHypxl2weS1aA3BVGUKdtZunaIwoXNm14IW1';

  if (ParticleInfo.projectId == '' || ParticleInfo.clientKey == '') {
    throw new Error(
      'You need set project info, Get your project id and client from dashboard, https://dashboard.particle.network',
    );
  }

  const chainInfo: ChainInfo = Ethereum;
  const env = Env.Dev;
  const metaData = {
    name: 'Particle Connect',
    icon: 'https://connect.particle.network/icons/512.png',
    url: 'https://connect.particle.network',
    description: 'Particle Wallet',
  };

  particleConnect.init(chainInfo, env, metaData);
  particleWallet.initWallet(metaData);
  particleAuthCore.init();
}

export async function connectParticle() {
  const connectConfig = {
    account: '',
    loginType: LoginType.Email,
    supportAuthType: [
      SupportAuthType.Email,
      SupportAuthType.Phone,
      SupportAuthType.Apple,
      SupportAuthType.Google,
    ],
    socialLoginPrompt: SocialLoginPrompt.SelectAccount,
    loginPageConifg: {
      projectName: 'React Native Example',
      description: 'Welcome to login',
      imagePath: 'https://connect.particle.network/icons/512.png',
    },
  };

  try {
    console.log('About to connect');
    const account = await particleConnect.connect(
      WalletType.AuthCore,
      connectConfig,
    );
    console.log('connect success', account);

    Toast.show({
      type: 'success',
      text1: 'Successfully connected',
    });
  } catch (e) {
    const error = e as CommonError;
    console.log(error);
    Toast.show({
      type: 'error',
      text1: error.message,
    });
  }
}

export async function openWallet() {
  particleWallet.navigatorWallet(WalletDisplay.Token);
}

// import { AuthCore } from '@particle-network/rn-auth';
// import { ParticleAuth } from '@particle-network/rn-auth';

// AuthCore.init({
//   projectId: 'YOUR_PROJECT_ID',
//   clientKey: 'YOUR_CLIENT_KEY',
//   appId: 'YOUR_APP_ID',
//   chainName: 'Ethereum', // Or 'Polygon', 'BSC', etc.
//   chainId: 1, // Chain ID for Ethereum mainnet
// });

const data = [
  { key: 'Init', function: init },
  { key: 'Connect particle', function: connectParticle },
  { key: 'Open Wallet', function: openWallet },
];
export default function Page() {
  const store = AppStores.useUserInfo();

  // const { sendCode, loginWithCode } = useLoginWithEmail();
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

  // const { isReady } = usePrivy();

  // if (!isReady) {
  //   return <TText type="subtitle">Loading...</TText>;
  // }

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
        {data.map((item, i) => (
          <TouchableOpacity
            key={i}
            style={styles.buttonStyle}
            onPress={async () => {
              await item.function();
            }}
          >
            <TText style={styles.textStyle}>{item.key}</TText>
          </TouchableOpacity>
        ))}

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
