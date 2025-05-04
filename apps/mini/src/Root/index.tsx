import { type PropsWithChildren } from 'react'
import { Toaster } from 'sonner'
import { ErrorBoundary } from 'src/components/ErrorBoundary'
import { ErrorPage } from 'src/components/ErrorPage'

import { Spinner } from '../components/Spinner'
import { useDidMount } from '../hooks/useDidMount'
import { AppStores } from '../lib/zustand'

import { appEnv } from './const'
import { FarcasterProvider } from './providers/Facaster'
import { MinipayProvider } from './providers/Minipay'
import { TgProvider } from './providers/Telegram'
import { WebProvider } from './providers/Web'

export function Root(props: PropsWithChildren) {
  // Unfortunately, Telegram Mini Apps does not allow us to use all features of the Server Side
  // Rendering. That's why we are showing loader on the server side.
  const didMount = useDidMount()
  const store = AppStores.useSettings()
  if (!didMount) return <Spinner />

  // return (
  //   <ErrorBoundary fallback={ErrorPage}>
  //     <TgProvider {...props} />
  //   </ErrorBoundary>
  // )

  if (appEnv === 'MINIPAY') {
    store.update({ appEnv: 'MINIPAY' })
    return (
      <ErrorBoundary fallback={ErrorPage}>
        <MinipayProvider {...props} />
        <Toaster richColors position="bottom-center" expand={false} closeButton duration={2000} />
      </ErrorBoundary>
    )
  }

  if (appEnv === 'FARCASTER') {
    store.update({ appEnv: 'FARCASTER' })
    return (
      <ErrorBoundary fallback={ErrorPage}>
        <FarcasterProvider {...props} />
        <Toaster richColors position="bottom-center" expand={false} closeButton duration={2000} />
      </ErrorBoundary>
    )
  }
  if (appEnv === 'TELEGRAM') {
    store.update({ appEnv: 'TELEGRAM' })
    return (
      <ErrorBoundary fallback={ErrorPage}>
        <TgProvider {...props} />
        <Toaster richColors position="bottom-center" expand={false} closeButton duration={2000} />
      </ErrorBoundary>
    )
  }
  store.update({ appEnv: 'TELEGRAM' })
  return (
    <ErrorBoundary fallback={ErrorPage}>
      <WebProvider {...props} />
      <Toaster richColors position="bottom-center" expand={false} closeButton duration={2000} />
    </ErrorBoundary>
  )
}
