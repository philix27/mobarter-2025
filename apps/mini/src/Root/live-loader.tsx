import React, { ReactNode } from 'react'
// import { LiveChatLoaderProvider } from 'react-live-chat-loader'

import ChatwootWidget from './chatwoot'

export default function LiveLoader({
  children,
  hide = false,
}: {
  children: ReactNode
  hide?: boolean
}) {
  //   const theme = useThemeColor()
  return (
    <>
      {children}
      {hide || <ChatwootWidget />}
    </>
  )
}

//  return (
//     <LiveChatLoaderProvider
//       providerKey={process.env.NEXT_PUBLIC_LIVE_CHAT!}
//       provider="chatwoot"
//       baseUrl={process.env.NEXT_PUBLIC_LIVE_CHAT_BASE_URL}
//     >
//       {children}
//       {/* <Chatwoot color={theme.primary} containerClass="bg_chatwoot" /> */}
//       {hide || <ChatwootWidget />}
//     </LiveChatLoaderProvider>
//   )
