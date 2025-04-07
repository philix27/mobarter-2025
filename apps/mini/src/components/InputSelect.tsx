import React, { ReactNode } from 'react'

export default function InputSelect(props: {
  error?: string
  label?: string
  children?: ReactNode
  select?: React.DetailedHTMLProps<React.SelectHTMLAttributes<HTMLSelectElement>, HTMLSelectElement>
}) {
  return (
    <div className='w-full'>
      {props.label && <p className="text-muted text-[15px] mb-1">{props.label}</p>}
      <select className="px-2 py-3 bg-card border-muted outline-none border-[0.5px] rounded-md text-muted w-full">
        {props.children}
      </select>
      {props.error && <p className="text-destructive text-[13px] mt-1">{props.error}</p>}
    </div>
  )
}
