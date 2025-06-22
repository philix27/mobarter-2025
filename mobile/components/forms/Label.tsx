import React from 'react'
import { TText } from '../ui'
import { device, useColor } from '@/lib'

export function Label(props: { label: string }) {
  const theme = useColor()
  return (
    <TText
      style={[
        {
          fontSize: device.isAndroid ? 14 : 16,
          fontWeight: device.isAndroid ? '400' : '500',
          marginBottom: 2,
          lineHeight: 18,
          color: theme.muted,
        },
      ]}
    >
      {props.label}
    </TText>
  )
}
