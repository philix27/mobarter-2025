import React from 'react'
import { TText } from '../ui'


export function Label(props: { label: string }) {
  return (
    <TText style={[{ fontSize: 16, marginBottom: 4 }]} type="default">
      {props.label}
    </TText>
  )
}
