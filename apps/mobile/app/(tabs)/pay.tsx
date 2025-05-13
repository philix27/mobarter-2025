import HeaderBar from '@/components/Header';
import { AppStores } from '@/lib';
import React from 'react';
import { useColor } from '@/lib/color';
import { Feather } from '@expo/vector-icons';
import { TView } from '@/components/TView';
import { useDrawer } from '@/components/DrawerContent';
import { TouchableOpacity } from 'react-native';
import ServicesScreen from '@/screens/services';

export default function HomeScreen() {
  const store = AppStores.useAdvert();
  const theme = useColor();
  const drawer = useDrawer();
  return (
    <>
      <HeaderBar
        title="Pay"
        headerLeft={(props: any) => {
          return (
            <TouchableOpacity
              style={{ marginLeft: 20, flexDirection: 'row', columnGap: 20 }}
            >
              <Feather
                name="menu"
                size={24}
                color={theme.text}
                onPress={() => {
                  drawer.open();
                }}
              />
            </TouchableOpacity>
          );
        }}
        headerRight={props => {
          return (
            <TView
              style={{ marginRight: 20, flexDirection: 'row', columnGap: 20 }}
            >
              <Feather name="filter" size={20} color={theme.text} />
              <Feather name="more-vertical" size={20} color={theme.text} />
            </TView>
          );
        }}
      />
      <ServicesScreen />
    </>
  );
}
