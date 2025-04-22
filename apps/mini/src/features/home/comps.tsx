import React from 'react'

export default function RoundIcon(props: { onClick: VoidFunction; title: string; Icon: any }) {
  const { Icon } = props
  return (
    <div className="flex flex-col items-center justify-center" onClick={props.onClick}>
      <div className="p-2 bg-card rounded-full h-[45px] w-[45px] flex items-center justify-center hover:bg-primary">
        <Icon size={18} />
      </div>
      <p className="text-[10px] font-normal text-muted"> {props.title}</p>
    </div>
  )
}
