// import 'react-native-get-random-values'
// import '@ethersproject/shims' //for ethers.js
// import { ContractFactory, ethers } from 'ethers'
import 'expo-router/entry'
import 'react-native-reanimated'
import { useFonts } from 'expo-font'
import { Stack } from 'expo-router'
import * as SplashScreen from 'expo-splash-screen'
import React, { useEffect } from 'react'
import { Dimensions, StatusBar } from 'react-native'
import { Colors } from '../lib/constants/colors'
import { RootProviders } from '@/lib/providers'
import { Drawer } from 'expo-router/drawer'
import { useColor } from '@/lib'
import { DrawerContent } from '@/components/layout'

// Prevent the splash screen from auto-hiding before asset loading is complete.
SplashScreen.preventAutoHideAsync()

export default function RootLayout() {
  const appColor = useColor()
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
    <Drawer
      screenOptions={{
        headerShown: false,
        drawerLabelStyle: {
          // marginLeft: -20,
          color: appColor.text,
        },
        drawerActiveBackgroundColor: appColor.background,
        drawerStyle: {
          width: Dimensions.get('window').width / 1.5,
          backgroundColor: appColor.background,
        },
      }}
      drawerContent={DrawerContent}
    >
      <RootProviders>
        <Drawer.Screen
          name="(tabs)"
          options={{
            drawerLabel: 'Home',
            title: 'Home',
          }}
        />
        <StatusBar backgroundColor={Colors.dark.background} barStyle="light-content" />
        {/* <Stack>
          <Stack.Screen name="(tabs)" options={{ headerShown: false }} />
          <Stack.Screen name="+not-found" />
        </Stack> */}
      </RootProviders>
    </Drawer>
  )
}
