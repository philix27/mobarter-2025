import React, { useState } from 'react'
import { cn } from 'src/lib/utils'

import { BottomNote, Label } from './comps'

export default function Input(
  props: {
    useBg?: string
    preText?: string
    error?: string
    desc?: string
    label?: string
    trailingIcon?: JSX.Element
    control?: any
  } & React.DetailedHTMLProps<React.InputHTMLAttributes<HTMLInputElement>, HTMLInputElement>
) {
  const { className, error, desc, label, trailingIcon, ...inputParams } = props
  const [focus, setFocus] = useState(false)
  const isNum = props.type === 'number'
  return (
    <div className="w-full">
      {label && <Label>{label}</Label>}
      <div
        className={cn(
          'rounded-md px-3 py-[5px] bg-card flex items-center justify-center',
          focus && 'border-primary border-[0.5px]',
          props.error && 'border-destructive',
          props.useBg ? 'bg-background' : 'bg-card',
          className
        )}
      >
        {props.preText && (
          <div className="h-full pr-1">
            <p className="font-normal  text-[16px]">{props.preText}</p>
          </div>
        )}
        <input
          {...inputParams}
          {...props.control}
          className={cn(
            `
            w-full
            border-none outline-none
            text-[16px] font-normal placeholder:font-light placeholder:text-sm
            py-[2px]
          `,
            props.useBg ? 'bg-background' : 'bg-card'
          )}
          autoComplete={isNum && 'off'}
          onFocus={() => {
            setFocus(true)
          }}
          onBlur={() => {
            setFocus(false)
          }}
          type={isNum && 'number'}
          pattern={isNum && '[0-9]*'}
          inputMode={isNum && 'decimal'}
          min={isNum && 0}
        />
        {trailingIcon && trailingIcon}
      </div>
      {desc && <BottomNote>{desc}</BottomNote>}
      {error && <p className="text-destructive text-[13px] mt-1">{error}</p>}
    </div>
  )
}
