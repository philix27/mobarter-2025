import { FlatList, ScrollView } from 'react-native';
import { TView } from '@/components/TView';
import React from 'react';
import { AssetsRow } from './AssetsRow';
import { TokenId, Tokens } from '@/assets/tokens/tokens';
import { useGetTokens } from '@/hooks';
import { AppStores } from '@/lib/zustand';
import { useActiveAccount } from 'thirdweb/react';

export default function AssetsCrypto() {
  const account = useActiveAccount();
  const { data, isLoading } = useGetTokens(account!.address, "NG");
  const store = AppStores.useView();

  if (isLoading) {
    return <TView />;
  }

  const getData = () => {
    if (store.activeViewAsset === 'ALL') return data;
    return data?.filter(
      val => val.chianId.toString() === store.activeViewAsset,
    );
  };

  return (
    <ScrollView>
      <TView style={{ paddingBottom: 50 }}>
        <FlatList
          data={getData()}
          renderItem={({ item }) => {
            const s = item.symbol as TokenId;
            const token = Tokens[s];
            const Logo = token.logo;
            return (
              <AssetsRow
                // icon={<Logo height={30} width={30} />}
                imgUrl={item.logoUrl as any}
                currency={item.symbol}
                tokenAddr={item.address}
                balance={item.balance}
                tokenPrice={item.tokenPrice}
                performance={item.name}
                onPress={() => {
                  return;
                  // router.push({
                  //   pathname: `/coin/[id]`,
                  // pathname: `/coin/[id]`,
                  // pathname: `/coin/${val.symbol}`,
                  //   params: { title: val.title },
                  // });
                }}
              />
            );
          }}
        />
      </TView>
    </ScrollView>
  );
}
