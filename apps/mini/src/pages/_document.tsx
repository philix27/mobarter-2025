import Document, { Head, Html, Main, NextScript } from 'next/document'
import { getDarkMode } from 'src/styles/mediaQueries'

export default class MyDocument extends Document {
  render() {
    const isDarkMode = getDarkMode()
    return (
      <Html className={isDarkMode ? 'dark' : ''}>
        <Head>
          <meta charSet="utf-8" />

          <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png" />
          <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png" />
          <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png" />
          <link rel="manifest" href="/site.webmanifest" />
          <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#ff6719" />
          <link rel="shortcut icon" href="/favicon.ico" />
          <meta name="msapplication-TileColor" content="#ff6719" />
          <meta name="msapplication-config" content="/browserconfig.xml" />
          <meta name="theme-color" content="#ffffff" />

          <meta name="application-name" content="Mobarter P2P Exchange" />
          <meta name="keywords" content="Mobarter P2P Exchange Finance cUSD cEUR cREAL" />
          <meta
            name="description"
            content="P2P crypto exchanges on stable coins (cUSD cEUR cREAL)"
          />

          <meta name="HandheldFriendly" content="true" />
          <meta name="apple-mobile-web-app-title" content="Mobarter P2P Exchange" />
          <meta name="apple-mobile-web-app-capable" content="yes" />

          <meta property="og:url" content="https://mobarter.com" />
          <meta property="og:title" content="Mobarter P2P Exchange" />
          <meta property="og:type" content="website" />
          <meta property="og:image" content="https://mobarter.com/logo.png" />
          <meta
            property="og:description"
            content="P2P crypto exchanges on stable coins (cUSD cEUR cREAL)"
          />
          <meta name="twitter:card" content="summary" />
          <meta name="twitter:title" content="Mobarter P2P Exchange" />
          <meta
            name="twitter:description"
            content="P2P crypto exchanges on stable coins (cUSD cEUR cREAL)"
          />
          <meta name="twitter:image" content="https://mobarter.com/logo.png" />

          {/* <meta
            name="viewport"
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no,shrink-to-fit=no,viewport-fit=cover"
          /> */}

          {/* <Script src='https://telegram.org/js/telegram-web-app.js' strategy="beforeInteractive" /> */}
        </Head>
        <body className=" text-foreground p-0 m-0">
          <Main />
          <NextScript />
        </body>
      </Html>
    )
  }
}
