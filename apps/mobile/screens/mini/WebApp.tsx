import { TView } from '@/components';
import { RBSheetRef } from 'react-native-raw-bottom-sheet';
import React, { useRef } from 'react';
import WebView, { WebViewMessageEvent } from 'react-native-webview';
import { SafeAreaView } from 'react-native';
import { useColor } from '@/lib/color';
import { KeyboardAwareScrollView } from 'react-native-keyboard-aware-scroll-view';
import { appsList } from './data';

export default function WebApp(props: { id: string }) {
  const currApp = appsList.filter(val => val.id === props.id)[0] || {
    id: '1',
    logo: '',
    title: 'No app',
    desc: 'desc',
    url: 'https://mobarter.com',
  };

  const webviewRef = useRef(null);
  const refRBSheet = useRef<RBSheetRef>();
  const appColor = useColor();

  const onMessage = (event: WebViewMessageEvent) => {
    const message = JSON.parse(event.nativeEvent.data);
    if (message.type === 'REQUEST_WALLET_ADDRESS') {
      const response = { type: 'WALLET_ADDRESS', data: '0xabc123...' };
      webviewRef.current!.postMessage(JSON.stringify(response));
    }
  };

  const injectedJS = `
    (function() {
      window.myInjectedObject = { name: "React Native", type: "App" };
      console.log("Injected object:", window.myInjectedObject);
    })();
    true; // Required for iOS
  `;
  return (
    <SafeAreaView
      style={{
        backgroundColor: appColor.background,
        minHeight: '100%',
        width: '100%',
      }}
    >
      <KeyboardAwareScrollView
        contentContainerStyle={{
          flexGrow: 1,
        }}
        showsVerticalScrollIndicator={false}
        showsHorizontalScrollIndicator={false}
        bounces={false}
      >
        <TView
          style={{
            height: '100%',
            width: '100%',
          }}
        >
          <WebView
            javaScriptEnabled
            domStorageEnabled
            onMessage={onMessage}
            source={{ uri: currApp.url }}
            injectedJavaScript={injectedJS}
            style={{ flex: 1 }}
          />
        </TView>
      </KeyboardAwareScrollView>
    </SafeAreaView>
  );
}
