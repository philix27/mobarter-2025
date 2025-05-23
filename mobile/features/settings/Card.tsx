import { TText, TView } from '@/components/ui';
import { useColor } from '@/hooks/useColor';
import { ReactNode } from 'react';

export function Card(props: { children: ReactNode }) {
  const appColor = useColor();
  return (
    <TView
      style={{
        width: '100%',
        borderRadius: 10,
        margin: 10,
        // padding: 10,
        // backgroundColor: appColor.card,
      }}
    >
      {props.children}
    </TView>
  );
}

export function SectionTitle(props: { title: string }) {
  return (
    <TView
      style={{
        width: '100%',
        marginLeft: 10,
        marginTop: 10,
      }}
    >
      <TText type="default" style={{}}>
        {props.title}
      </TText>
    </TView>
  );
}

export function InfoRow(props: { title: string; title2: string }) {
  return (
    <TView
      style={{
        flexDirection: 'row',
        paddingHorizontal: 5,
        paddingVertical: 10,
        justifyContent: 'space-between',
      }}
    >
      <TText>{props.title}</TText>
      <TText type="defaultSemiBold">{props.title2}</TText>
    </TView>
  );
}
