import { ReactNode } from 'react';
import { cn } from 'src/lib/utils';


export function Label(params: { children: ReactNode; className?: string }) {
  return (
    <div className={cn('flex items-center justify-start mb-[2px] mt-1', params.className)}>
      <p className="text-muted text-[12.5px] uppercase ml-1 font-light">{params.children}</p>
    </div>
  )
}

export function BottomNote(params: { children: ReactNode }) {
  return (
    <div className="mb-1 flex items-center w-full justify-start mt-0">
      <p className="text-muted text-[12px] ml-2">{params.children}</p>
    </div>
  )
}

export function AdsRow(params: {
  text: string
  text2: string
  text2options?: { onClick: VoidFunction; active?: boolean }
}) {
  return (
    <div className="mb-1 flex items-center w-full justify-between p-1">
      <p className="text-[12.5px] uppercase text-muted">{params.text}</p>
      <p
        className={cn('text-xs', params.text2options?.active && 'text-primary')}
        onClick={() => {
          params.text2options?.onClick()
        }}
      >
        {params.text2}
      </p>
    </div>
  )
}

export const Line = () => <hr className="border-[0.2px] h-[0.2px] border-muted" />

export const Instructions = (props: { children: ReactNode }) => (
  <div className="bg-card rounded-md p-3  w-full hover:disabled:">
    <p className="text-muted">{props.children}</p>
  </div>
)

export const Card = (props: { children: ReactNode; onClick?: VoidFunction; className?: string }) => (
  <div
    className={cn('bg-card rounded-md p-2  w-full hover:disabled text-muted', props.className)}
    onClick={props.onClick}
  >
    {props.children}
  </div>
)