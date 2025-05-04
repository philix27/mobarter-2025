import { PropsWithChildren } from 'react'

export function WebProvider({ children }: PropsWithChildren) {
  return (
    <div>
      <p>Hello Web guy</p>
      {children}
    </div>
  )
}
