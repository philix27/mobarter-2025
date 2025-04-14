import React from 'react'

const windowA = window as any
class ChatwootWidget extends React.Component {
  componentDidMount() {
    // Add Chatwoot Settings
    windowA.chatwootSettings = {
      hideMessageBubble: false,
      position: 'right', // This can be left or right
      locale: 'en', // Language to be set
      type: 'standard', // [standard, expanded_bubble]
      darkMode: 'auto',
    }
    // Paste the script from inbox settings except the <script> tag(function (d, t) {
    function init(d: any, t: any) {
      const BASE_URL = 'https://chatwoot-production-ea49.up.railway.app'
      const g = d.createElement(t),
        s = d.getElementsByTagName(t)[0]
      g.src = BASE_URL + '/packs/js/sdk.js'
      g.defer = true
      g.async = true
      s.parentNode.insertBefore(g, s)
      g.onload = function () {
        windowA.chatwootSDK.run({
          websiteToken: 'ChCYDay9BNZhV46PMh3dSXhi',
          baseUrl: BASE_URL,
        })
      }
    }

    init(document, 'script')
  }

  render() {
    return null
  }
}

export default ChatwootWidget
