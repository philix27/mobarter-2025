import { StyleSheet,  ViewStyle } from 'react-native'
import { PlatformPressable } from '@react-navigation/elements'
import Animated, { useSharedValue, withSpring } from 'react-native-reanimated'
import { useEffect } from 'react'
import { TView } from './TView'
import { useColor } from '@/hooks'

export function FlatTabs(props: {
  tintColor?: string
  style?: ViewStyle
  data: {
    title: string
    key: string
    onPress: VoidFunction
    isActive: boolean
  }[]
}) {
  const colors = useColor()

  return (
    <TView
      style={[
        {
          width: '100%',
          borderBottomColor: colors.card,
          borderBottomWidth: 1.2,
        },
        props.style,
      ]}
    >
      <TView
        style={[
          {
            width: '100%',
            flexDirection: 'row',
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'space-between',
          },
        ]}
      >
        {props.data.map((route, index) => {
          const isFocused = route.isActive

          const onPress = () => {
            route.onPress()
          }

          return (
            <TabBarButton
              key={index}
              onPress={onPress}
              isFocused={isFocused}
              label={route.title}
              routeName={route.key}
            />
          )
        })}
      </TView>
    </TView>
  )
}

function TabBarButton(props: {
  onPress: VoidFunction
  isFocused: boolean
  label: string
  routeName: string
}) {
  const scale = useSharedValue(0)
  const theme = useColor()
  useEffect(() => {
    scale.value = withSpring(props.isFocused ? 1 : 0, { duration: 300 })
  }, [scale, props.isFocused])

  return (
    <PlatformPressable onPress={props.onPress} style={styles.tabBarItem}>
      <Animated.Text
        style={[
          {
            fontSize: 12,
            fontWeight: 500,
            color: props.isFocused ? theme.primary : theme.muted,
          },
          // animatedTextStyle,
        ]}
      >
        {props.label}
      </Animated.Text>
    </PlatformPressable>
  )
}
const styles = StyleSheet.create({
  tabBarItem: {
    flex: 1,
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    paddingBottom: 10,
    width: '100%',
    margin: 0,
    // backgroundColor: "teal",
  },
})
