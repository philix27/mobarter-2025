import { ButtonHTMLAttributes, DetailedHTMLProps } from 'react'
import { cn } from 'src/lib/utils'

export function Button(
  props: DetailedHTMLProps<ButtonHTMLAttributes<HTMLButtonElement>, HTMLButtonElement>
) {
  return (
    <button
      className={cn('bg-primary px-6 py-2 rounded-md my-2', props.className)}
      onClick={props.onClick}
    >
      {props.children}
    </button>
  )
}
