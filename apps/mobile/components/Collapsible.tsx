import { PropsWithChildren, useState } from 'react';
import { StyleSheet, TouchableOpacity } from 'react-native';
import { TText } from '@/components/TText';
import { TView } from '@/components/TView';
import { IconSymbol } from '@/components/ui/IconSymbol';
import { Colors } from '@/constants/Colors';
import { useColorScheme } from '@/hooks/useColorScheme';
import { useColor } from '@/lib/color';
import IconRound from './IconRound';

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
        borderRadius: 10,
        padding: 10,
      }}
    >
      <TouchableOpacity
        style={{
          flexDirection: 'row',
          alignItems: 'center',
          justifyContent: 'space-between',
          gap: 10,
          height: 40,
        }}
        onPress={() => setIsOpen(value => !value)}
        activeOpacity={0.8}
      >
        <TView
          style={{
            flexDirection: 'row',
            gap: 10,
            alignItems: 'center',
            backgroundColor: theme.card,
          }}
        >
          <IconSymbol
            name="chevron.right"
            size={18}
            weight="medium"
            color={theme.text}
            style={{ transform: [{ rotate: isOpen ? '90deg' : '0deg' }] }}
          />
          <TText type="defaultSemiBold">{title}</TText>
        </TView>
        {icon && icon}
      </TouchableOpacity>
      {isOpen && (
        <TView
          style={{
            marginTop: 6,
            backgroundColor: theme.background,
            padding: 10,
            borderRadius: 10,
          }}
        >
          {children}
        </TView>
      )}
    </TView>
  );
}
