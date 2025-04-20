import { ButtonHTMLAttributes, DetailedHTMLProps } from 'react'
import { cn } from 'src/lib/utils'

export function Button(
  props: DetailedHTMLProps<ButtonHTMLAttributes<HTMLButtonElement>, HTMLButtonElement> & {
    isLoading?: boolean
  }
) {
  return (
    <button
      className={cn(
        'bg-primary px-6 py-[5px] rounded-md my-2 border-none outline-none hover:bg-primary/50',
        props.className
      )}
      onClick={props.onClick}
    >
      {props.children}
    </button>
  )
}
