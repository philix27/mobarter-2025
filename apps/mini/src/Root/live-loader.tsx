import React, { ReactNode, useEffect, useState } from 'react'
import ChatwootWidget from './chatwoot'

export default function LiveLoader({
  children,
  hide = false,
}: {
  children: ReactNode
  hide?: boolean
}) {
  const [hideB, setHideB] = useState(false)

  useEffect(() => {
    setHideB(true)
    return () => {
      const w = window as any
      w.chatwootSettings = {
        hideMessageBubble: false,
        showPopoutButton: false,
      }
    }
  }, [])
  return (
    <>
      {children}
      {/* <Chatwoot color={theme.primary} containerClass="bg_chatwoot" /> */}
      {hide || <ChatwootWidget hideBubble={hideB} />}
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

//  return (
//     <>
//       {children}
//  <ChatwootWidget />
//     </>
//   )
