import { useEffect, useState } from 'react'

import { toast, TText, TView } from '@/components/ui'
import { getUniversalLink, SelfAppBuilder } from '@selfxyz/core'
import { InputButton } from '@/components/forms'
import { router } from 'expo-router'
const rootUrl = process.env.NEXT_PUBLIC_ROOT_URL || 'http://localhost:4545/api/v1'

export default function SelfVerification() {
  // const { evmAddress } = useAppContext()
  // const [userId, setUserId] = useState<string | null>(uuidv4())
  const [userId, setUserId] = useState<string | null>('4f52f8f6-58d6-49ca-89a4-32eda2a1e455')

  // useEffect(() => {
  //   // Generate a user ID when the component mounts
  //   setUserId(uuidv4())
  // }, [])

  if (!userId) return null

  // Create the SelfApp configuration
  const selfApp = new SelfAppBuilder({
    appName: 'Mobarter',
    scope: 'telegram-mini-app',
    endpoint: `${rootUrl}/auth-self`,
    userId,
    header: 'A payment solution for Africans',
    userIdType: 'hex', // only for if you want to link the proof with the user address
    // logoBase64: logoBase64ToString,
    // userId: evmAddress,
  }).build()

  const deeplink = getUniversalLink(selfApp)

  // selfApp
  console.log(userId)
  return (
    <TView>
      <TText>Verify your identity</TText>
      <TText>Open the Self App and scan the QR code {userId}</TText>

      <TView>
        <InputButton
          title="Verify using Self"
          onPress={() => {
            router.push(deeplink as any)
          }}
        />
      </TView>
    </TView>
  )
}
