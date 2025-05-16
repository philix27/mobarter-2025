import { View, StyleSheet, LayoutChangeEvent } from 'react-native';
import { PlatformPressable } from '@react-navigation/elements';
import { BottomTabBarProps } from '@react-navigation/bottom-tabs';
import { useColor } from '@/lib/color';
import { Feather, FontAwesome, MaterialIcons } from '@expo/vector-icons';
import Animated, {
  interpolate,
  useAnimatedStyle,
  useSharedValue,
  withSpring,
} from 'react-native-reanimated';
import { useEffect, useState } from 'react';

function TabBarButton(props: {
  onPress: VoidFunction;
  onLongPress: VoidFunction;
  isFocused: boolean;
  color: string;
  label: string;
  routeName: string;
}) {
  const color = useColor();
  const icons = {
    home: (props: typeof Feather) => (
      <FontAwesome name="home" size={18.5} {...props} />
    ),
    p2p: (props: typeof Feather) => (
      <MaterialIcons name="currency-exchange" size={18.5} {...props} />
    ),
    pay: (props: typeof Feather) => (
      <MaterialIcons name="payments" size={18.5} {...props} />
    ),
  };
  const scale = useSharedValue(0);
  useEffect(() => {
    scale.value = withSpring(props.isFocused ? 1 : 0, { duration: 300 });
  }, [scale, props.isFocused]);

  const animatedTextStyle = useAnimatedStyle(() => {
    const opacity = interpolate(scale.value, [0, 1], [1, 0]);
    return { opacity };
  });

  const animatedIconStyle = useAnimatedStyle(() => {
    const scaleValue = interpolate(scale.value, [0, 1], [1, 1.2]);
    // const top = interpolate(scale.value, [0, 1], [0, 9]);
    return {
      transform: [
        {
          scale: scaleValue,
        },
      ],
      // top,
    };
  });

  return (
    <PlatformPressable
      onPress={props.onPress}
      onLongPress={props.onLongPress}
      style={styles.tabBarItem}
    >
      <Animated.View style={animatedIconStyle}>
        {icons[props.routeName]({
          color: props.isFocused ? props.color : color.muted,
        })}
      </Animated.View>
      {/* <Animated.Text
        style={[
          {
            color: props.color,
            fontSize: 11,
            marginTop: 5,
            fontWeight: 300,
          },
          animatedTextStyle,
        ]}
      >
        {props.label}
      </Animated.Text> */}
    </PlatformPressable>
  );
}

export function AppTabBar({
  state,
  descriptors,
  navigation,
}: BottomTabBarProps) {
  const colors = useColor();
  const [dimensions, setDimensions] = useState({ width: 100, height: 20 });

  const buttonWidth = dimensions.width / state.routes.length;

  const onTabBarLayout = (e: LayoutChangeEvent) => {
    setDimensions({
      width: e.nativeEvent.layout.width,
      height: e.nativeEvent.layout.height,
    });
  };

  const tabPositionX = useSharedValue(0);

  const animatedStyle = useAnimatedStyle(() => {
    return {
      transform: [{ translateX: tabPositionX.value }],
    };
  });
  return (
    <View
      onLayout={onTabBarLayout}
      style={[
        styles.tabar,
        {
          backgroundColor: colors.background,
          borderColor: colors.card,
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
            marginHorizontal: 12,
            height: dimensions.height - 15,
            // width: dimensions.width - 25,
            width: buttonWidth - 25,
          },
        ]}
      />
      {state.routes.map((route, index) => {
        const { options } = descriptors[route.key];
        const label =
          options.tabBarLabel !== undefined
            ? options.tabBarLabel
            : options.title !== undefined
              ? options.title
              : route.name;

        const isFocused = state.index === index;

        const onPress = () => {
          tabPositionX.value = withSpring(buttonWidth * index, {
            duration: 1500,
          });
          const event = navigation.emit({
            type: 'tabPress',
            target: route.key,
            canPreventDefault: true,
          });

          if (!isFocused && !event.defaultPrevented) {
            navigation.navigate(route.name, route.params);
          }
        };

        const onLongPress = () => {
          navigation.emit({
            type: 'tabLongPress',
            target: route.key,
          });
        };

        return (
          <TabBarButton
            key={route.name}
            onLongPress={onLongPress}
            onPress={onPress}
            isFocused={isFocused}
            color={isFocused ? '#fff' : colors.text}
            label={label.toString()}
            routeName={route.name}
          />
        );
      })}
    </View>
  );
}

const styles = StyleSheet.create({
  tabar: {
    position: 'absolute',
    bottom: 50,
    flexDirection: 'row',
    borderWidth: 1.5,
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'space-between',
    marginHorizontal: 100,
    // width: "auto",
    // paddingVertical: 10,
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
    paddingVertical: 20,
    // backgroundColor: "teal",
  },
});
