import { Text, type TextProps, StyleSheet } from 'react-native'

import { useColor } from '@/hooks/useColor'
import { device } from '@/lib'

export type ThemedTextProps = TextProps & {
  lightColor?: string
  darkColor?: string
  muted?: boolean
  type?: 'default' | 'title' | 'defaultSemiBold' | 'subtitle' | 'link' | 'sm' | 'md' | 'xs'
}

export function TText({
  style,
  lightColor,
  darkColor,
  muted,
  type = 'default',
  ...rest
}: ThemedTextProps) {
  const color = useColor()
  return (
    <Text
      style={[
        { color: muted ? color.muted : color.text },
        type === 'default' ? styles.default : undefined,
        type === 'title' ? styles.title : undefined,
        type === 'defaultSemiBold' ? styles.defaultSemiBold : undefined,
        type === 'subtitle' ? styles.subtitle : undefined,
        type === 'link' ? styles.link : undefined,
        type === 'md' ? styles.md : undefined,
        type === 'sm' ? styles.sm : undefined,
        type === 'xs' ? styles.xs : undefined,
        style,
      ]}
      {...rest}
    />
  )
}

const styles = StyleSheet.create({
  default: {
    fontSize: 16,
    lineHeight: 24,
  },
  defaultSemiBold: {
    fontSize: device.isiOS ? 16 : 14,
    lineHeight: 24,
    fontWeight: device.isiOS ? '600' : '500',
  },
  title: {
    fontSize: 30,
    fontWeight: 'bold',
    lineHeight: 32,
  },
  subtitle: {
    fontSize: 25,
    fontWeight: 'bold',
    lineHeight: 20,
  },
  link: {
    fontSize: 16,
    lineHeight: 30,
    color: '#0a7ea4',
  },
  md: {
    fontSize: 14,
    lineHeight: 20,
  },
  sm: {
    fontSize: 12,
    lineHeight: 20,
  },
  xs: {
    fontSize: 10,
    lineHeight: 18,
  },
})
