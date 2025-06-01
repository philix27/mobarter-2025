import { ParallaxScrollView, Wrapper } from '@/components'
import { TText } from '@/components/ui'
import ViewFixed from '@/features/savings/fixed/View'
import { Link } from 'expo-router'
import Create from '@/features/savings/fixed/Create'
import { ethers } from 'ethers'
import { Image, StyleSheet, View, useColorScheme } from 'react-native'

export default function HomeScreen() {
  return (
    <ParallaxScrollView
      headerBackgroundColor={{ light: '#A1CEDC', dark: '#1D3D47' }}
      headerImage={<Image source={require('@/assets/images/title.png')} style={styles.reactLogo} />}
    >
      <Link href={'/home'}>
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
