import { ParallaxScrollView, Wrapper } from '@/components'
import { TText } from '@/components/ui'
import { Link } from 'expo-router'
import { Image, StyleSheet, View, useColorScheme } from 'react-native'
import { useActiveAccount, useConnect } from 'thirdweb/react'
import { ThemedButton } from '@/components/ThemedButton'
import { inAppWallet } from 'thirdweb/wallets/in-app'
import { chain, client } from '@/lib'
import { baseSepolia, ethereum } from 'thirdweb/chains'
import { ThirdwebClient } from 'thirdweb'

const wallets = [
  inAppWallet({
    auth: {
      options: ['google'],
    },
    smartAccount: {
      chain: baseSepolia,
      sponsorGas: true,
    },
  }),
]

export default function SignIn() {
  const account = useActiveAccount()
  const theme = useColorScheme()
  const conn = useConnect()

  return (
    <ParallaxScrollView
      headerBackgroundColor={{ light: '#A1CEDC', dark: '#1D3D47' }}
      headerImage={<Image source={require('@/assets/images/title.png')} style={styles.reactLogo} />}
    >
      <Link href={'/home'}>
        {account ? <TText>Connected </TText> : <TText>Not connected X</TText>}
      </Link>
      <TText>Home Page</TText>
      <ConnectWithGoogle />
      {/* <ConnectEmbed
        client={client}
        theme={theme || 'dark'}
        chain={ethereum}
        wallets={wallets}
        auth={{
          async doLogin(params) {
            // fake delay
            await new Promise((resolve) => setTimeout(resolve, 2000))
            const verifiedPayload = await thirdwebAuth.verifyPayload(params)
            isLoggedIn = verifiedPayload.valid
          },
          async doLogout() {
            isLoggedIn = false
          },
          async getLoginPayload(params) {
            return thirdwebAuth.generatePayload(params)
          },
          async isLoggedIn(address) {
            return isLoggedIn
          },
        }}
      /> */}
    </ParallaxScrollView>
  )
}

const ConnectWithGoogle = () => {
  const { connect, isConnecting } = useConnect()
  return (
    <ThemedButton
      title="Connect with Google"
      loading={isConnecting}
      loadingTitle="Connecting..."
      onPress={() => {
        connect(async () => {
          const w = inAppWallet({
            smartAccount: {
              chain,
              sponsorGas: true,
            },
          })
          await w.connect({
            client,
            strategy: 'google',
          })
          return w
        })
      }}
    />
  )
}

const styles = StyleSheet.create({
  reactLogo: {
    height: '100%',
    width: '100%',
    bottom: 0,
    left: 0,
    position: 'absolute',
  },
})
function createAuth(arg0: { domain: string; client: ThirdwebClient }) {
  throw new Error('Function not implemented.')
}
