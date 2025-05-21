import Row from '@/components/Row';
import { AppStores } from '@/lib';
import React from 'react';
import { Linking } from 'react-native';
import { useGetLinksDocs } from '@/hooks';
import { TView } from '@/components';

export default function Docs() {
  const store = AppStores.useUserInfo();
  const { data, isLoading } = useGetLinksDocs();

  if (isLoading) {
    return <TView />;
  }

  return (
    <>
      {data?.map((val, i) => (
        <Row
          key={i}
          title={val.title}
          desc={val.desc}
          onClick={() => {
            Linking.openURL(val.url);
          }}
        />
      ))}
    </>
  );
}
