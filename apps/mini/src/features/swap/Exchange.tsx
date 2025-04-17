import React from 'react'
import { Button } from 'src/components/Button'
import { AppStores } from 'src/lib/zustand'

// import { SwapForm } from './SwapForm'
import { SettingsMenu } from './comps/SettingsMenu'

export default function Swap() {
  const store = AppStores.useSwap()
  return (
    <div className="bg-background rounded-2xl p-0 max-w-md w-full">
      <div className="flex justify-between  p-2">
        <h2 className="font-medium">Swap</h2>
        <SettingsMenu />
      </div>
      <div className="p-6">
        {/* <SwapForm /> */}
        <div>
          <div className="flex items-center justify-around">
            <Button
              onClick={() => {
                store.update({ swapSteps: 'CONFIRM' })
              }}
            >
              Next
            </Button>
          </div>
        </div>
      </div>
    </div>
  )
}
