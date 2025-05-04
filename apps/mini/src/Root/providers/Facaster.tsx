import { PropsWithChildren } from 'react'

export function FarcasterProvider({ children }: PropsWithChildren) {
  return (
    <div>
      <p>Hello Minipay</p>
      {children}
    </div>
  )
}
