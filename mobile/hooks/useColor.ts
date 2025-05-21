import { useContext } from 'react';
import { ThemeContext } from '../lib/providers';
import { Colors } from '@/lib';

export const useColor = () => {
  const { theme } = useContext(ThemeContext);
  const themeKey = theme === 'dark' ? 'dark' : 'light';
  return Colors[themeKey];
};
