import MarketScreen from '@/features/market'
import { router } from 'expo-router'
import { useActiveAccount } from 'thirdweb/react'

export default function Page() {
  const account = useActiveAccount()
  // if (!account) {
  //   router.push('/(auth)/sign-in')
  // }

  return (
    <>
      <MarketScreen />
    </>
  )
}
