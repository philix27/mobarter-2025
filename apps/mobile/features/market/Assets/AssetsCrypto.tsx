import { FlatList, ScrollView } from 'react-native';
import { TView } from '@/components/TView';
import React from 'react';
import { AssetsRow } from './AssetsRow';
import { coinsList } from '@/constants';
import { TokenId, Tokens } from '@/assets/tokens/tokens';
import { TText } from '@/components';

export default function AssetsCrypto() {
  return (
    <ScrollView>
      <TView style={{ paddingBottom: 200 }}>
        <FlatList
          data={Object.keys(Tokens)}
          renderItem={({ item }) => {
            const token = Tokens[item as TokenId];
            const Logo = token.logo;
            return (
              <AssetsRow
                icon={<Logo height={30} width={30} />}
                imgUrl={undefined}
                currency={token.symbol}
                balance={0.5}
                dollarBalance={5000}
                performance={'+2.3%'}
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
