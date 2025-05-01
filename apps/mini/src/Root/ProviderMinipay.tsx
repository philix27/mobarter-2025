import { PropsWithChildren } from 'react'

export function MinipayProvider({ children }: PropsWithChildren) {
  return (
    <div>
      <p>Hello Minipay</p>
      {children}
    </div>
  )
}
