import IconRound from '@/components/IconRound';
import { TText } from '@/components/TText';
import { TView } from '@/components/TView';
import { useColor } from '@/lib/color';
import { JSX } from 'react';
import { TouchableOpacity, Image } from 'react-native';

export default function Row(props: {
  title: string;
  desc?: string;
  imgUrl?: string;
  bgColor?: string;
  icon?: JSX.Element;
  onClick?: VoidFunction;
}) {
  const appColor = useColor();
  const bgColor = props.bgColor ? props.bgColor : appColor.card;
  return (
    <TouchableOpacity
      style={{
        backgroundColor: bgColor,
        width: '100%',
        marginBottom: 5,
        paddingVertical: 8,
        paddingHorizontal: 10,
        borderRadius: 8,
      }}
      onPress={props.onClick}
    >
      <TView
        style={{
          backgroundColor: bgColor,
          flexDirection: 'row',
          alignItems: "center"
        }}
      >
        {props.imgUrl && (
          <Image
            source={{ uri: props.imgUrl }}
            style={{ height: 40, width: 40, marginRight: 12, borderRadius: 20 }}
          />
        )}

        {props.icon && (
          <IconRound style={{ marginRight: 12 }}>{props.icon}</IconRound>
        )}

        <TView style={{ backgroundColor: bgColor }}>
          <TText type="defaultSemiBold">{props.title}</TText>
          {props.desc && (
            <TText
              style={{
                color: appColor.muted,
                fontSize: 12,
                textOverflow: 'ellipsis',
                wordWrap: 'ellipsis',
                flex: 1,
                flexWrap: 'wrap',
                paddingVertical: 0,
              }}
            >
              {props.desc}
            </TText>
          )}
        </TView>
      </TView>
    </TouchableOpacity>
  );
}
