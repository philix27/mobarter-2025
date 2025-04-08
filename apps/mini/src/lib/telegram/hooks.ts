import { backButton, useSignal } from '@telegram-apps/sdk-react'
import { useEffect } from 'react'

export function useTgBackButton() {
  const isVisible = useSignal(backButton.isVisible)

  useEffect(() => {
    backButton.show()
    return () => {
      backButton.hide()
    }
  }, [])

  return { isVisible }
}
