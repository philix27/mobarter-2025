import React, { useState } from 'react'
import { cn } from 'src/lib/utils'

import { BottomNote, Label } from './comps'

export default function Input(
  props: {
    error?: string
    desc?: string
    label?: string
    trailingIcon?: JSX.Element
    control?: any
  } & React.DetailedHTMLProps<React.InputHTMLAttributes<HTMLInputElement>, HTMLInputElement>
) {
  const { className, error, desc, label, trailingIcon, ...inputParams } = props
  const [focus, setFocus] = useState(false)
  return (
    <div className="w-full">
      {label && <Label>{label}</Label>}
      <div
        className={cn(
          'rounded-md px-3 py-[5px] bg-card border-muted border-[0.5px] flex items-center justify-center',
          focus && 'border-primary ',
          props.error && 'border-destructive',
          className
        )}
      >
        <input
          {...inputParams}
          {...props.control}
          className={`
            w-full bg-card 
            border-none outline-none
            text-[16px] font-normal placeholder:font-light placeholder:text-sm
            py-[2px]
          `}
          onFocus={() => {
            setFocus(true)
          }}
          onBlur={() => {
            setFocus(false)
          }}
        />
        {trailingIcon && trailingIcon}
      </div>
      {desc && <BottomNote>{desc}</BottomNote>}
      {error && <p className="text-destructive text-[13px] mt-1">{error}</p>}
    </div>
  )
}
