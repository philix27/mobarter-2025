import IconRound from '@/components/ui/IconRound'
import { TView } from '@/components/ui/TView'
import { useColor } from '@/hooks/useColor'
import { JSX } from 'react'
import { TouchableOpacity, Image, ViewStyle } from 'react-native'
import { SvgUri } from 'react-native-svg'
import { TText } from './TText'

export function Row(props: {
  title: string
  desc?: string
  imgUrl?: string
  svgUrl?: string
  bgColor?: string
  style?: ViewStyle
  icon?: JSX.Element
  trailing?: JSX.Element
  onClick?: VoidFunction
}) {
  const appColor = useColor()
  const bgColor = props.bgColor ? props.bgColor : appColor.card
  return (
    <TouchableOpacity
      style={[
        {
          backgroundColor: bgColor,
          width: '100%',
          marginBottom: 2,
          paddingVertical: 5,
          paddingHorizontal: 10,
          borderRadius: 5,
          flexDirection: 'row',
          alignItems: 'center',
          justifyContent: 'space-between',
        },
        props.style,
      ]}
      onPress={props.onClick}
    >
      <TView
        style={{
          backgroundColor: bgColor,
          flexDirection: 'row',
          alignItems: 'center',
        }}
      >
        {props.svgUrl && (
          <SvgUri
            uri={props.svgUrl}
            style={{
              height: 40,
              width: 40,
              marginRight: 12,
              borderRadius: 20,
            }}
          />
        )}

        {props.imgUrl && (
          <Image
            source={{ uri: props.imgUrl }}
            style={{ height: 40, width: 40, marginRight: 12, borderRadius: 20 }}
          />
        )}

        {props.icon && <IconRound style={{ marginRight: 12 }}>{props.icon}</IconRound>}

        <TView style={{ backgroundColor: bgColor }}>
          <TText type="defaultSemiBold" style={{ lineHeight: 18 }}>
            {props.title}
          </TText>
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
                // lineHeight: 20,
              }}
            >
              {props.desc}
            </TText>
          )}
        </TView>
      </TView>
      {props.trailing && props.trailing}
    </TouchableOpacity>
  )
}
