import { type PropsWithChildren } from 'react'
import { ErrorBoundary } from 'src/components/ErrorBoundary'
import { ErrorPage } from 'src/components/ErrorPage'

import { Spinner } from '../components/Spinner'
import { useDidMount } from '../hooks/useDidMount'

// import { FarcasterProvider } from './ProviderFacaster'
// import { MinipayProvider } from './ProviderMinipay'
// import { WebProvider } from './ProviderWeb'
import { TgProvider } from './TgProvider'

// const appEnv = process.env.NEXT_PUBLIC_APP_ENV

export function Root(props: PropsWithChildren) {
  // Unfortunately, Telegram Mini Apps does not allow us to use all features of the Server Side
  // Rendering. That's why we are showing loader on the server side.
  const didMount = useDidMount()

  if (!didMount) return <Spinner />

  return (
    <ErrorBoundary fallback={ErrorPage}>
      <TgProvider {...props} />
    </ErrorBoundary>
  )

  // if (appEnv === 'MINIPAY') {
  //   return (
  //     <ErrorBoundary fallback={ErrorPage}>
  //       <MinipayProvider {...props} />
  //     </ErrorBoundary>
  //   )
  // }

  // if (appEnv === 'FARCASTER') {
  //   return (
  //     <ErrorBoundary fallback={ErrorPage}>
  //       <FarcasterProvider {...props} />
  //     </ErrorBoundary>
  //   )
  // }
  // if (appEnv === 'TELEGRAM') {
  //   return (
  //     <ErrorBoundary fallback={ErrorPage}>
  //       <TgProvider {...props} />
  //     </ErrorBoundary>
  //   )
  // }
  // return (
  //   <ErrorBoundary fallback={ErrorPage}>
  //     <WebProvider {...props} />
  //   </ErrorBoundary>
  // )
}
