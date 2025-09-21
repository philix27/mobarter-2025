import { View, type ViewProps } from 'react-native'
import { useColor } from '@/hooks/useColor'

export type ThemedViewProps = ViewProps & {
  lightColor?: string
  darkColor?: string
}

export function TView(props: ThemedViewProps) {
  const { style, ...otherProps } = props;
  const appColor = useColor()

  return <View style={[{ backgroundColor: appColor.background }, style]} {...otherProps} />
}
