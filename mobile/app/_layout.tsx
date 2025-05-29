import { useFonts } from 'expo-font'
import { Stack } from 'expo-router'
import * as SplashScreen from 'expo-splash-screen'
import { useEffect } from 'react'
import { StatusBar } from 'react-native'
import { Colors } from '../lib/constants/colors'
import { ThemeProvider } from '../lib/providers/ThemeContext'
import { tokenCache } from '@clerk/clerk-expo/token-cache'
// Prevent the splash screen from auto-hiding before asset loading is complete.
SplashScreen.preventAutoHideAsync()

import { ClerkProvider } from '@clerk/clerk-expo'

const CP = ClerkProvider as any

export default function RootLayout() {
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
    <CP tokenCache={tokenCache}>
      <ThemeProvider>
        <StatusBar backgroundColor={Colors.dark.background} barStyle="light-content" />
        <Stack>
          <Stack.Screen name="(tabs)" options={{ headerShown: false }} />
          <Stack.Screen name="+not-found" />
        </Stack>
      </ThemeProvider>
    </CP>
  )
}
