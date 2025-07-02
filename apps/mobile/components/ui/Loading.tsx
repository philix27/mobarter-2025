import { ActivityIndicator } from 'react-native'
import { useColor } from '@/hooks/useColor'
import { TView } from './TView'

export const LoadingIndicator = (props: { size?: number; color?: string }) => {
  const color = useColor()
  return (
    <TView
      style={{
        width: '100%',
        height: props.size,
        alignItems: 'center',
        justifyContent: 'center',
      }}
    >
      <ActivityIndicator color={props.color ? props.color : color.primary} />
    </TView>
  )
}
