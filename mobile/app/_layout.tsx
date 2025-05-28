import { useFonts } from 'expo-font'
import { Stack } from 'expo-router'
import * as SplashScreen from 'expo-splash-screen'
import { useEffect } from 'react'

import { useColorScheme } from '@/hooks/useColorScheme'
import { StatusBar } from 'react-native'
import { Colors } from '../lib/constants/colors'
import { ThemeProvider } from '../lib/providers/ThemeContext'
import { tokenCache } from '@clerk/clerk-expo/token-cache'
// Prevent the splash screen from auto-hiding before asset loading is complete.
SplashScreen.preventAutoHideAsync()

import { ClerkProvider } from '@clerk/clerk-expo'
import { WagmiProvider, http, createConfig } from 'wagmi'
import { mainnet, sepolia } from 'wagmi/chains'

export const config = createConfig({
  chains: [mainnet, sepolia],
  transports: {
    [mainnet.id]: http(),
    [sepolia.id]: http(),
  },
})

export default function RootLayout() {
  const colorScheme = useColorScheme()
  const [loaded] = useFonts({
    SpaceMono: require('../assets/fonts/SpaceMono-Regular.ttf'),
  })

  useEffect(() => {
    if (loaded) {
      SplashScreen.hideAsync()
    }
  }, [loaded])

  if (!loaded) {
    return null
  }

  return (
    <ClerkProvider tokenCache={tokenCache}>
      <WagmiProvider config={config}>
        <ThemeProvider>
          <StatusBar backgroundColor={Colors.dark.background} barStyle="light-content" />
          <Stack>
            <Stack.Screen name="(tabs)" options={{ headerShown: false }} />
            <Stack.Screen name="+not-found" />
          </Stack>
        </ThemeProvider>
      </WagmiProvider>
    </ClerkProvider>
  )
}
