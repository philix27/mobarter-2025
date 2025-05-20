import { PropsWithChildren, useState } from 'react';
import { TouchableOpacity } from 'react-native';
import { TText } from '@/components/TText';
import { TView } from '@/components/TView';
import { IconSymbol } from '@/components/ui/IconSymbol';
import { useColor } from '@/lib/color';

export function Collapsible({
  children,
  title,
  icon,
}: PropsWithChildren & { title: string; icon?: JSX.Element }) {
  const [isOpen, setIsOpen] = useState(false);
  const theme = useColor();

  return (
    <TView
      style={{
        width: '100%',
        backgroundColor: theme.card,
        borderRadius: 8,
        padding: 4,
        marginBottom: 5,
      }}
    >
      <TouchableOpacity
        style={{
          flexDirection: 'row',
          alignItems: 'center',
          justifyContent: 'space-between',
          paddingVertical: 8,
          paddingHorizontal: 10,
          backgroundColor: theme.card,
        }}
        onPress={() => setIsOpen(value => !value)}
        activeOpacity={0.8}
      >
        <TText type="defaultSemiBold">{title}</TText>
        <IconSymbol
          name="chevron.right"
          size={18}
          weight="medium"
          color={theme.text}
          style={{ transform: [{ rotate: isOpen ? '90deg' : '0deg' }] }}
        />
      </TouchableOpacity>
      {isOpen && (
        <TView
          style={{
            backgroundColor: theme.background,
            paddingVertical: 5,
            paddingHorizontal: 5,
            borderRadius: 10,
          }}
        >
          {children}
        </TView>
      )}
    </TView>
  );
}
