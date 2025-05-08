// import { MiniKitProvider } from '@coinbase/onchainkit'
// import { MiniKitProvider } from '@coinbase/onchainkit/dist/minikit'
import { PropsWithChildren } from 'react'

// import { base } from 'wagmi/chains'

export function FarcasterProvider(props: PropsWithChildren) {
  // const chain = base as any
  return (
    <>
      {/* <MiniKitProvider
        apiKey={process.env.NEXT_PUBLIC_ONCHAINKIT_API_KEY}
        chain={chain}
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
