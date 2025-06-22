// import { useDrawer } from '@/components/layout'
import { TabBarIcon } from '@/components/navigation/TabBarIcon'

import { useColor } from '@/hooks/useColor'
import { Feather, Ionicons } from '@expo/vector-icons'
import { router, Tabs, usePathname } from 'expo-router'
import React from 'react'
import { TouchableOpacity } from 'react-native'

export default function TabLayout() {
  const theme = useColor()
  // const drawer = useDrawer()
  const pathname = usePathname()
  const isHomePage = pathname === '/home'

  return (
    <Tabs
      screenOptions={{
        tabBarActiveTintColor: theme.primary,
        headerShown: true,
        headerShadowVisible: false,
        tabBarInactiveBackgroundColor: theme.background,
        tabBarActiveBackgroundColor: theme.background,
        tabBarStyle: {
          backgroundColor: theme.background,
          borderColor: theme.background,
        },
        sceneStyle: {
          borderColor: theme.background,
          backgroundColor: theme.background,
        },
        headerStyle: { backgroundColor: theme.background },
        headerTitleStyle: {
          color: theme.text,
          fontSize: 15,
          fontWeight: '600',
        },
      }}
    >
      <Tabs.Screen
        name="home"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabBarIcon name={focused ? 'wallet' : 'wallet-outline'} color={color} />
          ),
          title: 'Wallet',
          // headerShown: false,
          headerRight: (props: any) => {
            return (
              <TouchableOpacity style={{ marginRight: 20, flexDirection: 'row', columnGap: 20 }}>
                <Ionicons
                  name="receipt-outline"
                  size={20}
                  color={theme.text}
                  onPress={() => {
                    router.push('/transactions')
                  }}
                />
              </TouchableOpacity>
            )
          },
          // headerLeft: !isHomePage
          //   ? undefined
          //   : (props: any) => {
          //       return (
          //         <TouchableOpacity
          //           style={{ marginLeft: 20, marginRight: 20, flexDirection: 'row', columnGap: 20 }}
          //         >
          //           <Feather
          //             name="menu"
          //             size={24}
          //             color={theme.text}
          //             onPress={() => {
          //               drawer.open()
          //             }}
          //           />
          //         </TouchableOpacity>
          //       )
          //     },
        }}
      />
      <Tabs.Screen
        name="payments"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabBarIcon name={focused ? 'reader' : 'reader-outline'} color={color} />
          ),
          title: 'Payments',
        }}
      />
      <Tabs.Screen
        name="account"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabBarIcon name={focused ? 'person' : 'person-outline'} color={color} />
          ),
          title: 'Account',
          // headerShown: false,
        }}
      />
    </Tabs>
  )
}
