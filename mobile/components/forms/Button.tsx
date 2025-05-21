import { useColor } from '@/hooks/useColor';
import {
  ActivityIndicator,
  StyleProp,
  TouchableOpacity,
  ViewStyle,
} from 'react-native';
import { Text, StyleSheet } from 'react-native';

export default function InputButton(props: {
  title: string;
  style?: ViewStyle;
  isLoading?: boolean;
  onPress?: VoidFunction;
  variant?: 'secondary' | 'outline';
}) {
  const appColor = useColor();
  return (
    <TouchableOpacity
      style={{
        width: '75%',
        ...styles.button,
        ...props.style,
        backgroundColor:
          props.variant === 'secondary' ? '#282828' : appColor.primary,
      }}
      onPress={props.onPress}
    >
      {props.isLoading ? (
        <ActivityIndicator size="small" color="#fff" />
      ) : (
        <Text style={styles.buttonText}>{props.title}</Text>
      )}
    </TouchableOpacity>
  );
}

const styles = StyleSheet.create({
  button: {
    paddingVertical: 10,
    paddingHorizontal: 16,
    borderRadius: 100,
    alignItems: 'center',
    marginTop: 10,
    // width: "50%",
  },
  buttonText: {
    color: '#fff',
    fontSize: 16,
    fontWeight: 'bold',
  },
});
