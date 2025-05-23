import { Analytics } from '@vercel/analytics/react'
import type { AppProps } from 'next/app'
import { PropsWithChildren } from 'react'
import { ErrorBoundary } from 'src/components/Errors'
import { PreventZoom } from 'src/lib/telegram'
import { useIsSsr } from 'src/lib/utils/ssr'
import 'src/styles/globals.css'

import { Root } from '@/src/Root'

function SafeHydrate({ children }: PropsWithChildren<any>) {
  // Disable app SSR for now as it's not needed and
  // complicates redux and wagmi integration
  const isSsr = useIsSsr()
  if (isSsr) {
    return <div></div>
  } else {
    return children
  }
}

export default function App({ Component, pageProps }: AppProps) {
  return (
    <ErrorBoundary>
      <SafeHydrate>
        <Root>
          <PreventZoom>
            <Component {...pageProps} />
          </PreventZoom>
        </Root>
        {process.env.NODE_ENV !== 'development' && <Analytics />}
      </SafeHydrate>
    </ErrorBoundary>
  )
}
