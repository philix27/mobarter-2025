import { TText, TView } from '@/components';
import React, { useRef, useState } from 'react';
import { appsList } from './data';
import Row from '@/components/Row';
import Wrapper from '@/components/Wrapper';
import { Image } from 'react-native';
import { router } from 'expo-router';

export default function MiniAppsScreen() {
  const [currApp, setCurrAppUrl] = useState<{ url: string; title: string }>({
    url: "'https://google.com'",
    title: 'My App',
  });
  const webviewRef = useRef(null);
  // const refRBSheet = useRef<RBSheetRef>();

  return (
    <Wrapper>
      <TView style={{ width: '100%' }}>
        {appsList.map((val, i) => (
          <Row
            key={i}
            {...val}
            onClick={() => {
              router.push({
                pathname: `/(core)/mini/${i}` as any,
                params: { title: val.title },
              });
              // router.push(`/(core)/mini/${i}` as any);
            }}
            icon={
              <Image
                source={{ uri: val.logo }}
                resizeMode="cover" // or 'contain', 'stretch', etc.
                style={{ height: 40, width: 40, borderRadius: 20 }}
              />
            }
          />
        ))}
        );
      </TView>
      {/* <BottomSheet
        ref={refRBSheet!}
        height={850}
        title={currApp.title}
        onClose={refRBSheet.current!.close}
      >
        <WebView
          javaScriptEnabled
          domStorageEnabled
          onMessage={onMessage}
          source={{ uri: currApp.url }}
          injectedJavaScript={injectedJS}
          style={{ flex: 1 }}
        />
      </BottomSheet> */}
    </Wrapper>
  );
}
