import React, { ReactNode } from 'react'

type IText = 'xs' | 'sm' | 'md' | 'lg' | 'xl'
const style: Record<IText, string> = {
  xs: '',
  sm: '',
  md: '',
  lg: '',
  xl: '',
}
export function Text(props: { variant?: IText; children: ReactNode; className?: string }) {
  if (!props.variant)
    return <p className={style['md'].concat(' ', props.className!)}>{props.children}</p>
  return <p className={style[props.variant].concat(' ', props.className!)}>{props.children}</p>
}
