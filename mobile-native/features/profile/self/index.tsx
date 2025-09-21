import { TText, TView } from '@/components'
import { getUniversalLink, SelfAppBuilder } from '@selfxyz/core'
import { InputButton } from '@/components/forms'
import { router } from 'expo-router'
import { useAddress } from '@/hooks/web3/hooks'
import { env } from '@/lib/env'


export default function SelfVerification() {
  const address = useAddress()

  // Create the SelfApp configuration
  const selfApp = new SelfAppBuilder({
    appName: 'Mobarter',
    scope: 'telegram-mini-app',
    endpoint: env.BACKEND_SELF_ENDPOINT,
    header: 'A payment solution for Africans',
    userIdType: 'hex', // only for if you want to link the proof with the user address
    userId: address,
    // logoBase64: logoBase64ToString,
  }).build()

  const deeplink = getUniversalLink(selfApp)

  return (
    <TView>
      <TText>Verify your identity</TText>
      <TText>Open the Self App and scan the QR code </TText>

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
