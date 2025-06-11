// import 'react-native-get-random-values'
// import '@ethersproject/shims' //for ethers.js
// import { ContractFactory, ethers } from 'ethers'
import { useFonts } from 'expo-font'
import * as SplashScreen from 'expo-splash-screen'
import React, { useEffect } from 'react'
import { Dimensions, StatusBar } from 'react-native'
import { Colors } from '../lib/constants/colors'
import { RootProviders } from '@/lib/providers'
import { Drawer } from 'expo-router/drawer'
import { useColor } from '@/lib'
import { DrawerContent } from '@/components/layout'
import NavigationBar from 'expo-navigation-bar'


// Prevent the splash screen from auto-hiding before asset loading is complete.
SplashScreen.preventAutoHideAsync()
// NavigationBar.setPositionAsync("absolute");

// NavigationBar.setVisibilityAsync("hidden");
// NavigationBar.setBackgroundColorAsync("#ffffff00");
// NavigationBar.setBehaviorAsync("inset-swipe");
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
0

  return (
    <RootProviders>
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
        <Drawer.Screen
          name="(tabs)"
          options={{
            drawerLabel: 'Home',
            title: 'Home',
          }}
        />
        {/* <Drawer.Screen
          name="index"
          options={{
            drawerLabel: 'index',
            title: 'index',
          }}
        /> */}
        <StatusBar backgroundColor={Colors.dark.background} barStyle="light-content" />
        {/* <Stack>
          <Stack.Screen name="(tabs)" options={{ headerShown: false }} />
          <Stack.Screen name="+not-found" />
        </Stack> */}
      </Drawer>
    </RootProviders>
  )
}
