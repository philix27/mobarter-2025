import { View, Text, Pressable, Image, TouchableOpacity } from 'react-native'
import React from 'react'
import { DrawerContentComponentProps, DrawerContentScrollView } from '@react-navigation/drawer'
import { router, useNavigation } from 'expo-router'
import { DrawerActions } from '@react-navigation/native'
import { TText, TView } from '../'

export function DrawerContent(props: DrawerContentComponentProps) {
  // const { close } = useDrawer()
  return (
    <TView style={{ flex: 1 }}>
      <DrawerContentScrollView {...props} scrollEnabled={false} style={{ marginTop: 50 }}>
        {/* {props.state.routeNames} */}
        {/* <DrawerItemList {...props} /> */}
        {links.map((val, i) => (
          <TView key={i} style={{ marginBottom: 20, marginHorizontal: 20 }}>
            <TouchableOpacity
              onPress={() => {
                router.push(val.link as any)
              }}
            >
              <TText type="subtitle" style={{ fontSize: 20 }}>
                {val.title}
              </TText>
            </TouchableOpacity>
          </TView>
        ))}
        <TView style={{ marginBottom: 20, marginHorizontal: 20 }}>
          {/* <TouchableOpacity onPress={close}>
            <TText type="subtitle">Logout</TText>
          </TouchableOpacity> */}
        </TView>
      </DrawerContentScrollView>
    </TView>
  )
}

export const useDrawer = () => {
  const navigation = useNavigation()
  // const open = () => {}
  // const close = () => {}
  // const toggle = () => {}
  const open = () => navigation.dispatch(DrawerActions.openDrawer())
  const close = () => navigation.dispatch(DrawerActions.closeDrawer())
  const toggle = () => navigation.dispatch(DrawerActions.toggleDrawer())

  return { open, close, toggle }
}
const links: { title: string; link: string }[] = [
  { title: 'Profile', link: '/profile' },
  { title: 'Transactions', link: '/transactions' },
  { title: 'Settings', link: '/settings' },
]
