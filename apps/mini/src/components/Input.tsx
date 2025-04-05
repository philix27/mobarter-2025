import React, { useState } from 'react'
import { cn } from 'src/lib/utils'

export default function Input(
  props: { error?: string; label?: string } & React.DetailedHTMLProps<
    React.InputHTMLAttributes<HTMLInputElement>,
    HTMLInputElement
  >
) {
  const { className, ...inputParams } = props
  const [focus, setFocus] = useState(false)
  return (
    <div>
      {props.label && <p className="text-muted text-[15px] mb-1">{props.label}</p>}
      <div
        className={cn(
          'rounded-md px-3 py-2 bg-card border-muted border-[0.5px]',
          focus && 'border-primary ',
          props.error && 'border-destructive',
          className
        )}
      >
        <input
          {...inputParams}
          className={`
            w-full bg-card 
            border-none outline-none
            text-[20px] font-normal placeholder:font-light placeholder:text-sm
          `}
          onFocus={() => {
            setFocus(true)
          }}
          onBlur={() => {
            setFocus(false)
          }}
        />
      </div>
      {props.error && <p className="text-destructive text-[13px] mt-1">{props.error}</p>}
    </div>
  )
}
