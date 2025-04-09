import React, { ReactNode } from 'react'
import { DisableZoom } from './DissableZoom'
import { type PropsWithChildren, } from 'react';
import {
  miniApp,
  useLaunchParams,
  useSignal,
} from '@telegram-apps/sdk-react';
import { TonConnectUIProvider } from '@tonconnect/ui-react';
import { AppRoot } from '@telegram-apps/telegram-ui';

import { useTelegramMock } from './hooks/useTelegramMock';
import { useClientOnce } from './hooks/useClientOnce';

import { init } from './init';

function RootInner({children  }: PropsWithChildren) {
  const isDev = process.env.NODE_ENV === 'development';

  // Mock Telegram environment in development mode if needed.
  if (isDev) {
    // eslint-disable-next-line react-hooks/rules-of-hooks
    useTelegramMock();
  }

  const lp = useLaunchParams();
  const debug = isDev || lp.startParam === 'debug';

  // Initialize the library.
  useClientOnce(() => {
    init(debug);
  });

  const isDark = useSignal(miniApp.isDark);
  // const initDataUser = useSignal(initData.user);

  return (
    <TonConnectUIProvider manifestUrl="/tonconnect-manifest.json">
      <AppRoot
        appearance={isDark ? 'dark' : 'light'}
        platform={['macos', 'ios'].includes(lp.platform) ? 'ios' : 'base'}
      >
        {children}
      </AppRoot>
    </TonConnectUIProvider>
  );
}


export function TgProvider(props: { children: ReactNode }) {

  // const didMount = useDidMount();
   return (
    <div className="no-scrollbar" id="root">
       <DisableZoom > 
         
       <RootInner>     
           {props.children}
       </RootInner>
       </DisableZoom>
    </div>
   ) 
  
}
