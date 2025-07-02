import { useColor } from '@/hooks/useColor'
import { Ionicons } from '@expo/vector-icons'
import { router, Stack } from 'expo-router'
import React from 'react'
import { Platform } from 'react-native'
import {
  NativeStackHeaderLeftProps,
  NativeStackHeaderRightProps,
} from '@react-navigation/native-stack'

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
  return (
    <Stack.Screen
      options={{
        title: props.title,
        headerShown: headerShown,
        headerTitleStyle: {
          fontWeight: '700',
          fontSize: 16,
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
        headerLeft: headerLeft
          ? headerLeft
          : showBackBtn
            ? () => (
                <Ionicons
                  name={backIcon}
                  size={25}
                  color={appColor.text}
                  onPress={() => {
                    // if (props.backTo === "Home") router.push("/(tabs)/home");
                    // if (!props.backTo) router.back();
                    if (props.backTo === 'Home') {
                      router.back()
                      return
                    } else {
                      router.back()
                      return
                      // router.replace(props.backTo as any)
                    }
                  }}
                />
              )
            : undefined,

        headerRight: headerRight,
      }}
    />
  )
}
