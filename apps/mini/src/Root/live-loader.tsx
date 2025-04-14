import React, { ReactNode } from 'react'
import { Chatwoot, LiveChatLoaderProvider } from 'react-live-chat-loader'

export default function LiveLoader(props: { children: ReactNode }) {
  return (
    <LiveChatLoaderProvider providerKey="ChCYDay9BNZhV46PMh3dSXhi" provider="chatwoot">
      {props.children}
      <Chatwoot color="#ff6719" />
    </LiveChatLoaderProvider>
  )
}
