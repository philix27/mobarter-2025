import { useEffect } from 'react'

const BASE_URL = process.env.NEXT_PUBLIC_LIVE_CHAT_BASE_URL!
const CHATWOOT_TOKEN = process.env.NEXT_PUBLIC_LIVE_CHAT!
export function ChatwootWidget(props: { hideBubble: boolean }) {
  useEffect(() => {
    const windowA = window as any
    // Add Chatwoot Settings
    windowA.chatwootSettings = {
      hideMessageBubble: true,
      showPopoutButton: false,
      launcherTitle: 'Chat with us',
      position: 'top', // This can be left or right
      locale: 'en', // Language to be set
      type: 'standard', // [standard, expanded_bubble]
      darkMode: 'auto',
      baseDomain: 'mobarter.com',
    }
    // Paste the script from inbox settings except the <script> tag(function (d, t) {
    function init(d: any, t: any) {
      const g = d.createElement(t),
        s = d.getElementsByTagName(t)[0]
      g.src = BASE_URL + '/packs/js/sdk.js'
      g.defer = true
      g.async = true
      s.parentNode.insertBefore(g, s)
      g.onload = function () {
        windowA.chatwootSDK.run({
          websiteToken: CHATWOOT_TOKEN,
          baseUrl: BASE_URL,
        })
      }
    }

    init(document, 'script')
  }, [props.hideBubble])

  return null
}

export default ChatwootWidget
