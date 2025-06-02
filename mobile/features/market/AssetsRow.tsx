import { Image, TouchableOpacity } from 'react-native'
import { TText, TView } from '@/components/ui'
import React, { JSX } from 'react'
import { useColor } from '@/hooks/useColor'

export function AssetsRow(params: {
  imgUrl?: string
  svgUrl?: string | undefined
  icon?: JSX.Element
  currency: string
  balance: string
  tokenPrice: string
  performance: string
  tokenAddr: string
  onPress?: VoidFunction
}) {
  const appColor = useColor()
  const bgColor = appColor.card
  return (
    <TouchableOpacity
      onPress={params.onPress}
      style={{
        paddingVertical: 4,
        marginBottom: 1,
        backgroundColor: bgColor,
        paddingHorizontal: 10,
        borderRadius: 5,
      }}
    >
      <TView
        style={{
          display: 'flex',
          flexDirection: 'row',
          justifyContent: 'space-between',
          backgroundColor: bgColor,
        }}
      >
        <TView
          style={{
            display: 'flex',
            flexDirection: 'row',
            backgroundColor: bgColor,
          }}
        >
          <TView
            style={{
              backgroundColor: bgColor,
              marginRight: 10,
              display: 'flex',
              flexDirection: 'column',
              alignItems: 'center',
              justifyContent: 'center',
            }}
          >
            {params.icon}
            {params.imgUrl && (
              <Image
                source={{ uri: params.imgUrl }}
                style={{ height: 40, width: 40, borderRadius: 20 }}
              />
            )}
          </TView>
          <TView style={{ backgroundColor: bgColor }}>
            <TText type="defaultSemiBold">{params.currency}</TText>
            <TText type="default" style={{ fontSize: 13, color: appColor.muted }}>
              {params.performance}
            </TText>
          </TView>
        </TView>

        <TView style={{ backgroundColor: bgColor }}>
          <TText>{params.tokenPrice}</TText>
          <TText>{params.balance}</TText>
        </TView>
      </TView>
    </TouchableOpacity>
  )
}
