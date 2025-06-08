import { Ionicons } from '@expo/vector-icons'
import { router, Stack } from 'expo-router'
import React from 'react'
import { Platform } from 'react-native'
import {
  NativeStackHeaderLeftProps,
  NativeStackHeaderRightProps,
} from '@react-navigation/native-stack'
import { device, useColor } from '@/lib'

type IRoutes = 'Home'
export function HeaderBar({
  hideBack = false,
  showBackBtn = false,
  headerRight,
  headerLeft,
  headerShown,
  headerTitle,
  ...props
}: {
  title: string
  hideBack?: boolean
  showBackBtn?: boolean
  headerShown?: boolean | undefined
  backTo?: IRoutes | string | undefined
  headerLeft?: ((props: NativeStackHeaderLeftProps) => React.ReactNode) | undefined
  headerRight?: ((props: NativeStackHeaderRightProps) => React.ReactNode) | undefined
  headerTitle?:
    | string
    | ((props: { children: string; tintColor?: string }) => React.ReactNode)
    | undefined
}) {
  const appColor = useColor()
  const backIcon = Platform.OS === 'ios' ? 'chevron-back' : 'arrow-back-sharp'
  const getLeftIcon = () => {
    if (!headerLeft) return undefined
    if (!showBackBtn) return undefined
    if (showBackBtn && device.isAndroid) return undefined

    if (!device.isAndroid) {
      return () => (
        <Ionicons
          name={backIcon}
          size={25}
          color={appColor.text}
          // style={{margin: 40}}
          onPress={() => {
            // if (props.backTo === "Home") router.push("/(tabs)/home");
            // if (!props.backTo) router.back();
            if (props.backTo === 'Home') {
              router.back
              return
            } else {
              router.back()
              return
              // router.replace(props.backTo as any)
            }
          }}
        />
      )
    }
    return headerLeft
  }
  return (
    <Stack.Screen
      options={{
        title: props.title,
        headerShown: headerShown,
        headerTitleStyle: {
          fontWeight: '600',
          fontSize: 15,
          color: appColor.text,
        },
        contentStyle: {
          backgroundColor: appColor.background,
          borderColor: appColor.background,
        },
        headerStyle: {
          backgroundColor: appColor.background,
        },
        headerShadowVisible: false,
        headerTintColor: appColor.background,
        headerTitle: headerTitle,
        headerLeft: getLeftIcon(),
        headerRight: headerRight,
      }}
    />
  )
}
