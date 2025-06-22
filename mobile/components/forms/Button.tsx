import { useColor } from '@/hooks/useColor'
import { device } from '@/lib'
import { ActivityIndicator, TouchableOpacity, ViewStyle } from 'react-native'
import { Text, StyleSheet } from 'react-native'

export function InputButton(props: {
  title: string
  style?: ViewStyle
  isLoading?: boolean
  disabled?: boolean
  onPress?: VoidFunction
  variant?: 'secondary' | 'outline' | 'primary'
}) {
  const appColor = useColor()
  const getColor = () => {
    if (props.variant === 'secondary') return '#282828'
    if (props.disabled) return appColor.accent
    if (props.variant === 'primary') return appColor.primary
    return appColor.primary
  }
  return (
    <TouchableOpacity
      disabled={props.isLoading}
      style={{
        width: '50%',
        ...styles.button,
        ...props.style,
        backgroundColor: getColor(),
      }}
      onPress={props.disabled ? undefined : props.onPress}
    >
      {props.isLoading ? (
        <ActivityIndicator size="small" color="#fff" />
      ) : (
        <Text style={styles.buttonText}>{props.title}</Text>
      )}
    </TouchableOpacity>
  )
}

const styles = StyleSheet.create({
  button: {
    paddingVertical: 8,
    paddingHorizontal: 16,
    borderRadius: device.isiOS ? 100 : 20,
    alignItems: 'center',
    marginTop: 10,
    // width: "50%",
  },
  buttonText: {
    color: '#fff',
    fontSize: 14,
    fontWeight: device.isPad ? 'bold' : '600',
  },
})
