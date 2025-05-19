import Row from '@/components/Row';
import { AppStores } from '@/lib';
import React from 'react';
import { ActivityIndicator, Linking } from 'react-native';
import { Card, SectionTitle } from './Card';
import { useGetLinksDocs } from '@/hooks';

export default function Docs() {
  const store = AppStores.useUserInfo();
  const { data, isLoading } = useGetLinksDocs();

  if (isLoading) {
    return <ActivityIndicator />;
  }

  return (
    <>
      <SectionTitle title={'Docs'} />
      <Card>
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
      </Card>
    </>
  );
}
