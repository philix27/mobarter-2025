import { ScrollView } from 'react-native';
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
        {/* <AxEuroC fontSize={40} height={40} width={40} /> */}
        {/* <AxEuroC fontSize={40} height={40} width={40} /> */}
        {/* <TokenIcon token={Token} /> */}
        {/* {tokensList.map((val, i) => (
          <Image
            source={val.imgUrl as ImageSourcePropType}
            style={{ height: 40, width: 40, borderRadius: 20 }}
          />
        ))} */}
        {Object.keys(Tokens).map((key, i) => {
          const token = Tokens[key as TokenId];
          const Logo = token.logo;
          // return (
          //   <TView key={i}>
          //     <TText>{token.name}</TText>
          //   </TView>
          // );

          return (
            <AssetsRow
              key={i}
              icon={<Logo height={30} width={30} />}
              imgUrl={undefined}
              currency={token.symbol}
              balance={0.5}
              dollarBalance={5000}
              performance={'+2.3%'}
              onPress={() => {}}
            />
          );
        })}
        {/* {coinsList.map((val, i) => (
          <AssetsRow
            key={i}
            imgUrl={val.image}
            currency={val.symbol}
            balance={0.5}
            dollarBalance={5000}
            performance={'+2.3%'}
            onPress={() => {
              // router.push({
              //   pathname: `/coin/[id]`,
              // pathname: `/coin/[id]`,
              // pathname: `/coin/${val.symbol}`,
              //   params: { title: val.title },
              // });
            }}
          />
        ))} */}
      </TView>
    </ScrollView>
  );
}
