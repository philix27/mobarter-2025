import { PropsWithChildren } from 'react'

import { HeadMeta } from './HeadMeta'

interface Props {
  pathName: string
}

export function AppLayout({ pathName, children }: PropsWithChildren<Props>) {
  return (
    <>
      <HeadMeta pathName={pathName} />
      {children}
    </>
  )
}
