import React from 'react'

import { cn } from '@/src/lib/utils'

export default function RoundIcon(props: {
  onClick: VoidFunction
  title: string
  Icon: any
  className?: string
  bgColor?: string
}) {
  const { Icon } = props
  return (
    <div
      className={cn('flex flex-col items-center justify-center', props.className)}
      onClick={props.onClick}
    >
      <div
        className={cn(
          'p-2 bg-background rounded-full h-[45px] w-[45px] flex items-center justify-center hover:bg-primary',
          props.bgColor
        )}
      >
        <Icon size={18} />
      </div>
      <p className="text-[10px] mt-2 font-semibold text-muted"> {props.title}</p>
    </div>
  )
}
