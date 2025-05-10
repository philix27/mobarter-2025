import { Linking } from 'react-native';
export const openWebpage = (url: string) => {
  Linking.openURL(url).catch(err => console.error('Failed to open URL:', err));
};
