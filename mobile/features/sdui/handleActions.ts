import { openURL } from 'expo-linking'
import { Href, router } from 'expo-router'

export function handleAction(action: string, target: string) {
  switch (action) {
    case 'navigate': {
      console.log(`Navigate to ${target}`)
      if (target) {
        const path = target as Href
        router.push(path)
      }
      break
    }

    case 'openUrl': {
      if (target) {
        const path = target as string
        openURL(path)
      }

      break
    }

    default:
      console.log(`Unkown action: ${action}`)
      break
  }
}
