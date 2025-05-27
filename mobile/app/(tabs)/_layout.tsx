import { TabBarIcon } from '@/components/navigation/TabBarIcon';

import { useColor } from '@/hooks/useColor';
import { Tabs } from 'expo-router';
import React from 'react';

export default function TabLayout() {
  const colorScheme = useColor();

  return (
    <Tabs
      screenOptions={{
        tabBarActiveTintColor: colorScheme.primary,
        headerShown: false,
        headerShadowVisible: false,
        tabBarInactiveBackgroundColor: colorScheme.background,
        tabBarActiveBackgroundColor: colorScheme.background,
        tabBarStyle: {
          backgroundColor: colorScheme.background,
          borderColor: colorScheme.background,
        },
        sceneStyle: {
          borderColor: colorScheme.background,
          backgroundColor: colorScheme.background,
        },
        // headerBackgroundContainerStyle: {
        //   // backgroundColor: colorScheme.background,
        // },
        // headerStyle: {
        //   // backgroundColor: colorScheme.background,
        // },
      }}
    >
      <Tabs.Screen
        name="home"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabBarIcon
              name={focused ? 'wallet' : 'wallet-outline'}
              color={color}
            />
          ),
        }}
      />
      <Tabs.Screen
        name="payments"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabBarIcon
              name={focused ? 'reader' : 'reader-outline'}
              color={color}
            />
          ),
        }}
      />
      <Tabs.Screen
        name="savings"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabBarIcon
              name={focused ? 'save' : 'save-outline'}
              color={color}
            />
          ),
        }}
      />
      <Tabs.Screen
        name="settings"
        options={{
          tabBarIcon: ({ color, focused }) => (
            <TabBarIcon
              name={focused ? 'settings' : 'settings-outline'}
              color={color}
            />
          ),
        }}
      />
    </Tabs>
  );
}
