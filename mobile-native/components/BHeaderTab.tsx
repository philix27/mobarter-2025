import { StyleSheet, LayoutChangeEvent, ViewStyle } from 'react-native'
import { PlatformPressable } from '@react-navigation/elements'
import Animated, {
  useAnimatedStyle,
  useSharedValue,
  withSpring,
} from 'react-native-reanimated'
import { useEffect, useState } from 'react'
import { TView } from './'
import { useColor } from '@/hooks'

export function HeaderTabs(props: {
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
  const [dimensions, setDimensions] = useState({ width: 100, height: 20 })

  const buttonWidth = dimensions.width / props.data.length

  const onTabBarLayout = (e: LayoutChangeEvent) => {
    setDimensions({
      width: e.nativeEvent.layout.width,
      height: e.nativeEvent.layout.height,
    })
  }

  const tabPositionX = useSharedValue(0)

  const animatedStyle = useAnimatedStyle(() => {
    return {
      transform: [{ translateX: tabPositionX.value }],
    }
  })

  return (
    <TView
      style={[
        {
          width: 200,
          alignItems: 'center',
          justifyContent: 'center',
          // backgroundColor: "lime",
        },
        props.style,
      ]}
    >
      <TView
        onLayout={onTabBarLayout}
        style={[
          {
            // backgroundColor: "purple",
            borderColor: colors.card,
            width: '70%',
            flexDirection: 'row',
            borderWidth: 1.2,
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'space-between',
            borderRadius: 100,
            shadowColor: '#000',
            shadowOffset: { width: 0, height: 5 },
            shadowOpacity: 0.1,
            shadowRadius: 5,
          },
        ]}
      >
        <Animated.View
          style={[
            animatedStyle,
            {
              position: 'absolute',
              backgroundColor: colors.primary,
              borderRadius: 30,
              marginHorizontal: 10,
              height: dimensions.height - 10,
              width: buttonWidth - 25,
            },
          ]}
        />
        {props.data.map((route, index) => {
          const isFocused = route.isActive

          const onPress = () => {
            tabPositionX.value = withSpring(buttonWidth * index, {
              duration: 1500,
            })
            route.onPress()
          }

          const onLongPress = () => { return }

          return (
            <TabBarButton
              key={route.key}
              onLongPress={onLongPress}
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
  onLongPress: VoidFunction
  isFocused: boolean
  label: string
  routeName: string
}) {
  const scale = useSharedValue(0)
  const theme = useColor()
  useEffect(() => {
    scale.value = withSpring(props.isFocused ? 1 : 0, { duration: 300 })
  }, [scale, props.isFocused])

  // const animatedTextStyle = useAnimatedStyle(() => {
  //   const opacity = interpolate(scale.value, [0, 1], [1, 0]);
  //   return { opacity };
  // });

  //   const animatedIconStyle = useAnimatedStyle(() => {
  //     const scaleValue = interpolate(scale.value, [0, 1], [1, 1.2]);
  //     const top = interpolate(scale.value, [0, 1], [0, 9]);
  //     return {
  //       transform: [
  //         {
  //           scale: scaleValue,
  //         },
  //       ],
  //       top,
  //     };
  //   });

  return (
    <PlatformPressable
      onPress={props.onPress}
      onLongPress={props.onLongPress}
      style={styles.tabBarItem}
    >
      <Animated.Text
        style={[
          {
            fontSize: 12,
            fontWeight: 500,
            color: props.isFocused ? '#fff' : theme.muted,
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
  tabar: {
    // position: "absolute",
    // bottom: 50,
    width: '60%',
    flexDirection: 'row',
    borderWidth: 1.5,
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'space-between',
    borderRadius: 100,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 10 },
    shadowOpacity: 0.1,
    shadowRadius: 10,
  },
  tabBarItem: {
    flex: 1,
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    paddingVertical: 10,
    width: 50,
    margin: 0,
    // backgroundColor: "teal",
  },
})
