import { ParallaxScrollView, Wrapper } from '@/components'
import { TText } from '@/components/ui'
import { Link, router } from 'expo-router'
import { Image, StyleSheet } from 'react-native'
import { useActiveAccount } from 'thirdweb/react'

import { ThirdwebClient } from 'thirdweb'

export default function HomeScreen() {
  const account = useActiveAccount()

  if (!account) {
    router.push('/(auth)/sign-in')
  }
  return (
    <ParallaxScrollView
      headerBackgroundColor={{ light: '#A1CEDC', dark: '#1D3D47' }}
      headerImage={<Image source={require('@/assets/images/title.png')} style={styles.reactLogo} />}
    >
      <Link href={'/home'}>
        {account ? <TText>Connected </TText> : <TText>Not connected</TText>}
        <TText>Home Page</TText>
      </Link>
    </ParallaxScrollView>
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
