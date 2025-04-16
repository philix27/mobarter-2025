import React from 'react'
import { Button } from 'src/components/Button'
import { AppStores } from 'src/lib/zustand'

export default function Details() {
  const store = AppStores.useSwap()
  return (
    <div>
      <p>Step 2</p>
      <div className="flex items-center justify-around">
        <Button
          className="bg-background"
          onClick={() => {
            store.update({ swapSteps: 'EXCHANGE' })
          }}
        >
          Back
        </Button>
        <Button> Confirm</Button>
      </div>
    </div>
  )
}
