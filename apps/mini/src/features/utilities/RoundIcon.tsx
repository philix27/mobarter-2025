import React from 'react'

import { cn } from '@/src/lib/utils'

export default function RoundIcon(props: {
  onClick: VoidFunction
  title: string
  Icon: any
  className?: string
}) {
  const { Icon } = props
  return (
    <div
      className={cn('flex flex-col items-center justify-center', props.className)}
      onClick={props.onClick}
    >
      <div className="p-2 bg-background rounded-full h-[45px] w-[45px] flex items-center justify-center hover:bg-primary">
        <Icon size={18} />
      </div>
      <p className="text-[10px] font-normal text-muted"> {props.title}</p>
    </div>
  )
}
