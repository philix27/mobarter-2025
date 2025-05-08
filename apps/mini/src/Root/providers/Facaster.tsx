// import { MiniKitProvider } from '@coinbase/onchainkit/src/minikit'
import { PropsWithChildren } from 'react'

// import { base } from 'wagmi/chains'

export function FarcasterProvider(props: PropsWithChildren) {
  return (
    <>
      {/* <MiniKitProvider
        apiKey={process.env.NEXT_PUBLIC_ONCHAINKIT_API_KEY}
        chain={base}
        config={{
          appearance: {
            mode: 'auto',
            theme: 'mini-app-theme',
            name: process.env.NEXT_PUBLIC_ONCHAINKIT_PROJECT_NAME,
            logo: process.env.NEXT_PUBLIC_ICON_URL,
          },
        }}
      > */}
      {props.children}
      {/* </MiniKitProvider> */}
    </>
  )
}
