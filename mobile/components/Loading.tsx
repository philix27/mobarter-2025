import { ActivityIndicator } from 'react-native';
import { useColor } from '@/hooks/useColor';
import { TView } from './TView';

export const LoadingIndicator = () => {
  const color = useColor();
  return (
    <TView
      style={{
        width: '100%',
        height: 500,
        alignItems: 'center',
        justifyContent: 'center',
      }}
    >
      <ActivityIndicator color={color.primary} />
    </TView>
  );
};
