import React, { ReactNode } from 'react'
import { Chatwoot, LiveChatLoaderProvider } from 'react-live-chat-loader'

export default function LiveLoader(props: { children: ReactNode }) {
  return (
    <LiveChatLoaderProvider
      providerKey={process.env.NEXT_PUBLIC_LIVE_CHAT!}
      provider="chatwoot"
      baseUrl={process.env.NEXT_PUBLIC_LIVE_CHAT_BASE_URL}
      //   baseUrl="support.mobarter.com"
    >
      {props.children}
      <Chatwoot color="#ff6719" />
    </LiveChatLoaderProvider>
  )
}
