import { AuthType } from '@particle-network/auth-core'
import { AuthCoreContextProvider } from '@particle-network/auth-core-modal'
import { Celo } from '@particle-network/chains'
import { useLaunchParams } from '@telegram-apps/sdk-react'
import { type PropsWithChildren, useEffect } from 'react'
import { Toaster } from 'sonner'
import { ErrorBoundary } from 'src/components/ErrorBoundary'
import { ErrorPage } from 'src/components/ErrorPage'
import { useClientOnce } from 'src/hooks/useClientOnce'
import { useDidMount } from 'src/hooks/useDidMount'
import { useTelegramMock } from 'src/hooks/useTelegramMock'
import { init } from 'src/lib/telegram/init'

import { AppProvider } from './context'

if (typeof window !== 'undefined' && process.env.NEXT_PUBLIC_PARTICLE_ENV === 'development') {
  window.__PARTICLE_ENVIRONMENT__ = 'development'
}

function RootInner({ children }: PropsWithChildren) {
  // Mock Telegram environment in development mode if needed.
  if (process.env.NODE_ENV === 'development') {
    // eslint-disable-next-line react-hooks/rules-of-hooks
    useTelegramMock()
  }

  const debug = useLaunchParams().startParam === 'debug'

  // Initialize the library.
  useClientOnce(() => {
    init(debug)
  })

  // Enable debug mode to see all the methods sent and events received.
  useEffect(() => {
    if (debug) {
      // eslint-disable-next-line @typescript-eslint/no-floating-promises
      import('eruda').then((lib) => lib.default.init())
    }
  }, [debug])

  return (
    <AuthCoreContextProvider
      options={{
        projectId: process.env.NEXT_PUBLIC_PARTICLE_PROJECT_ID as string,
        clientKey: process.env.NEXT_PUBLIC_PARTICLE_CLIENT_KEY as string,
        appId: process.env.NEXT_PUBLIC_PARTICLE_APP_ID as string,
        customStyle: {
          projectName: 'Mobarter',
          subtitle: 'Welcome to a Celo based P2P marketplace',
          theme: {
            dark: {
              modalBackgroundColor: '#090909',
              themeBackgroundColor: '#090909',
            },
          },
        },
        authTypes: [AuthType.telegram],
        themeType: 'dark', // Optional
        fiatCoin: 'USD', // Optional
        language: 'en', // Optional
        //* reference https://docs.celo.org/developer/particle-network
        // promptSettingConfig: {
        //   // Optional, determines the security settings that a user has to configure
        //   promptPaymentPasswordSettingWhenSign: PromptSettingType.first,
        //   promptMasterPasswordSettingWhenLogin: PromptSettingType.first,
        // },
        wallet: {
          // Optional, streamlines the wallet modal popup
          visible: true, // Displays an embedded wallet popup on the bottom right of the screen after login
          customStyle: {
            supportChains: [Celo],
          },
        },
      }}
    >
      <Toaster richColors position="bottom-center" expand={false} closeButton duration={2000} />
      <AppProvider>{children}</AppProvider>
    </AuthCoreContextProvider>
  )
}

export function Root(props: PropsWithChildren) {
  // Unfortunately, Telegram Mini Apps does not allow us to use all features of the Server Side
  // Rendering. That's why we are showing loader on the server side.
  const didMount = useDidMount()

  return didMount ? (
    <ErrorBoundary fallback={ErrorPage}>
      <RootInner {...props} />
    </ErrorBoundary>
  ) : (
    <div className="text-gray-400">Loading...</div>
  )
}
