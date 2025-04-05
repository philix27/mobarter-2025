import React, { ReactNode } from 'react'

export default function Providers(props: {children:ReactNode}) {
  return (
    <div>{ props.children}</div>
  )
}
