import React from 'react'

import { SwapForm } from './SwapForm'

export default function SwapModal() {
  return (
    <div className="bg-background rounded-2xl p-0 max-w-md w-full">
      <div className="w-full bg-card rounded-xl px-4 py-2">
        <SwapForm />
      </div>
    </div>
  )
}
