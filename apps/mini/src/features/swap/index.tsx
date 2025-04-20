import React from 'react'

import { SwapForm } from './SwapForm'
import { SettingsMenu } from './comps/SettingsMenu'

export default function SwapModal() {
  return (
    <div className="bg-background rounded-2xl p-0 max-w-md w-full">
      <div className="flex items-end p-2">
        <SettingsMenu />
      </div>
      <div className="w-full bg-card rounded-md px-4 py-2">
        <SwapForm />
      </div>
    </div>
  )
}
