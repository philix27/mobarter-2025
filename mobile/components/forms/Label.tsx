import React from 'react'
import { TText } from '../ui'
import { useColor } from '@/lib'

export function Label(props: { label: string }) {
  const theme = useColor()
  return (
    <TText style={[{ fontSize: 16, marginBottom: 2, lineHeight: 18, color: theme.muted }]}>
      {props.label}
    </TText>
  )
}
