import React from 'react'
import { TText } from '../'
import { useColor } from '@/hooks'

export function ErrMsg(props: { msg: string }) {
  return <TText style={{ color: 'red', fontSize: 12, margin: 0, padding: 0 }}>{props.msg}</TText>
}

const fn = ErrMsg
export default fn

export function InfoMsg(props: { msg: string }) {
  const color = useColor()
  return (
    <TText style={{ color: color.primary, fontSize: 12, margin: 0, padding: 0 }}>{props.msg}</TText>
  )
}
