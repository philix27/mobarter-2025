import '@ethersproject/shims';
import '@expo/metro-runtime';
import 'react-native-reanimated';
import 'expo-router/entry';
import 'react-native-get-random-values';

import { Platform } from 'react-native';

if (Platform.OS !== 'web') {
  import('@thirdweb-dev/react-native-adapter');
}
