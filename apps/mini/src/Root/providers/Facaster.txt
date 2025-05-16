// import * as onchain from '@coinbase/onchainkit';
import * as minikit from '@coinbase/onchainkit/minikit'
import { PropsWithChildren } from 'react'
import { base } from 'wagmi/chains'

export function FarcasterProvider(props: PropsWithChildren) {
  return (
    <>
      <minikit.MiniKitProvider
        apiKey={process.env.NEXT_PUBLIC_ONCHAINKIT_API_KEY}
        chain={{
          blockExplorers: base.blockExplorers,
          id: base.id,
          name: base.name,
          nativeCurrency: base.nativeCurrency,
          rpcUrls: base.rpcUrls,
          contracts: base.contracts,
          custom: base.custom,
          ensTlds: base.ensTlds,
          formatters: base.formatters,
          serializers: base.serializers,
          sourceId: base.sourceId,
          testnet: base.testnet,
        }}
        config={{
          appearance: {
            mode: 'auto',
            theme: 'mini-app-theme',
            name: process.env.NEXT_PUBLIC_ONCHAINKIT_PROJECT_NAME,
            logo: process.env.NEXT_PUBLIC_ICON_URL,
          },
        }}
      >
        {props.children}
      </minikit.MiniKitProvider>
    </>
  )
}
