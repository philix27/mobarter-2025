import { type PropsWithChildren } from 'react'
import { ErrorBoundary } from 'src/components/ErrorBoundary'
import { ErrorPage } from 'src/components/ErrorPage'

import { Spinner } from '../components/Spinner'

import { TgProvider } from './TgProvider'
import { useDidMount } from '../hooks/useDidMount'

export function Root(props: PropsWithChildren) {
  // Unfortunately, Telegram Mini Apps does not allow us to use all features of the Server Side
  // Rendering. That's why we are showing loader on the server side.
  const didMount = useDidMount()

  return didMount ? (
    <ErrorBoundary fallback={ErrorPage}>
      <TgProvider {...props} />
    </ErrorBoundary>
  ) : (
    <Spinner />
  )
}
