import React, { ReactNode } from 'react'

export default function Container({ children }: { children: ReactNode }) {
  return <div className="w-full flex flex-col items-center gap-y-4">{children}</div>
}
