import { TText } from '@/components/TText';
import { TView } from '@/components/TView';
import React from 'react';
import QRCode from 'react-native-qrcode-svg';
import InputButton from '@/components/forms/Button';
import { ApiHooks, AppStores, ClipboardSet } from '@/lib';
import { LoadingIndicator } from '@/components/Loading';
import { ScrollView } from 'react-native';

export default function WalletQRCode() {
  const store = AppStores.useView();
  return (
    <ScrollView
      showsVerticalScrollIndicator={false}
      showsHorizontalScrollIndicator={false}
      bounces={false}
    >
      <TView
        style={{
          paddingBottom: 50,
          flexDirection: 'column',
          alignItems: 'center',
        }}
      >
        <RemoteWallet />
      </TView>
    </ScrollView>
  );
}

function RemoteWallet() {
  const { data, loading } = ApiHooks.useGetWallets();
  if (loading) return <LoadingIndicator />;

  return (
    <>
      {data?.walletCrypto_getAll.map((val, i) => (
        <TView key={i} style={{ marginBottom: 50 }}>
          <TText
            type="subtitle"
            style={{ textAlign: 'center', marginBottom: 20 }}
          >
            {val.chainType}
          </TText>
          <QRCode
            value={val.address}
            logoBackgroundColor="transparent"
            size={310}
          />
          <TText style={{ textAlign: 'center', marginVertical: 10 }}>
            {shortenAddress(val.address)}
          </TText>

          <InputButton
            title="Copy"
            onPress={async () => {
              await ClipboardSet(val.address);
            }}
          />
        </TView>
      ))}
    </>
  );
}

function shortenAddress(address: string, chars = 10): string {
  if (!address || address.length < chars * 2) {
    throw new Error('Invalid address');
  }
  return `${address.slice(0, chars)}...${address.slice(-chars)}`;
}
