import { PrivyProvider } from '@privy-io/react-auth'
import { miniApp, useLaunchParams, useSignal } from '@telegram-apps/sdk-react'
import { AppRoot } from '@telegram-apps/telegram-ui'
import { TonConnectUIProvider } from '@tonconnect/ui-react'
import React, { ReactNode } from 'react'
import { type PropsWithChildren } from 'react'

import { DisableZoom } from './DissableZoom'
import { useClientOnce } from './hooks/useClientOnce'
import { useTelegramMock } from './hooks/useTelegramMock'
import { init } from './init'

function RootInner({ children }: PropsWithChildren) {
  const isDev = process.env.NODE_ENV === 'development'

  // Mock Telegram environment in development mode if needed.
  if (isDev) {
    // eslint-disable-next-line react-hooks/rules-of-hooks
    useTelegramMock()
  }

  const lp = useLaunchParams()
  const debug = isDev || lp.startParam === 'debug'

  // Initialize the library.
  useClientOnce(() => {
    init(debug)
  })

  const isDark = useSignal(miniApp.isDark)
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
  )
}

export function TgProvider(props: { children: ReactNode }) {
  // const didMount = useDidMount();
  return (
    <div className="no-scrollbar" id="root">
      <DisableZoom>
        <RootInner>
          <PrivyProvider
            appId={process.env.NEXT_PUBLIC_PRIVY_APP_ID!}
            clientId={process.env.PRIVY_CLIENT_ID}
            config={{
              // Customize Privy's appearance in your app
              appearance: {
                theme: 'light',
                accentColor: '#C13E16',
                logo: 'https://your-logo-url',
              },
              // Create embedded wallets for users who don't have a wallet
              embeddedWallets: {
                createOnLogin: 'users-without-wallets',
                ethereum: {
                  createOnLogin: 'users-without-wallets',
                },
              },
            }}
          >
            {props.children}
          </PrivyProvider>
        </RootInner>
      </DisableZoom>
    </div>
  )
}
