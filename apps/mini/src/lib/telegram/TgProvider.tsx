import React, { ReactNode } from 'react'

import { DisableZoom } from './DissableZoom'

export function Provider(props: { children: ReactNode }) {
  return (
    <div className="no-scrollbar" id="root">
      <DisableZoom>{props.children}</DisableZoom>
    </div>
  )
}
