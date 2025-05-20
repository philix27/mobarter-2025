import { TView } from '@/components/TView';

import Row from '@/components/Row';
import { useRef } from 'react';

import { AppStores } from '@/lib/zustand';

import { BottomSheet } from '@/components/BottomSheet';
import { RBSheetRef } from 'react-native-raw-bottom-sheet';
import { useGetTokens } from '@/hooks';
import { useActiveAccount } from 'thirdweb/react';
import { AssetsRow } from '../market/AssetsRow';
import { ScrollView } from 'react-native';

export default function SelectPaymentToken() {
  const store = AppStores.useCountries();
  const countrySheet = useRef<RBSheetRef>(undefined);
  const account = useActiveAccount();
  const { data } = useGetTokens(account!.address, 'NG');

  if (!data) return <TView />;
  const aToken = data!.filter(val => val.symbol === store.activeTokenSymbol)[0];
  return (
    <>
      {aToken && (
        <Row
          title={`${aToken.name}`}
          desc={'Select your preferred token for Payments'}
          imgUrl={aToken.logoUrl}
          onClick={() => {
            countrySheet.current?.open();
          }}
        />
      )}

      <BottomSheet ref={countrySheet!}>
        <ScrollView>
          {data &&
            data.map((item, i) => {
              return (
                <AssetsRow
                  key={i}
                  imgUrl={item.logoUrl as any}
                  currency={item.symbol}
                  tokenAddr={item.address}
                  balance={item.balance}
                  tokenPrice={item.tokenPrice}
                  performance={item.name}
                  onPress={() => {
                    store.update({
                      activeTokenSymbol: item.symbol,
                    });
                    countrySheet.current?.close();
                  }}
                />
              );
            })}
          <TView style={{ height: 40 }} />
        </ScrollView>
      </BottomSheet>
    </>
  );
}
