import SelfQRcodeWrapper, { SelfAppBuilder } from '@selfxyz/qrcode'
import { useEffect, useState } from 'react'
import { toast } from 'sonner'
import { v4 as uuidv4 } from 'uuid'

// import { useAppContext } from '@/src/Root/TgContext'

const rootUrl = process.env.NEXT_PUBLIC_ROOT_URL
export default function SelfVerification() {
  // const { evmAddress } = useAppContext()
  const [userId, setUserId] = useState<string | null>()

  useEffect(() => {
    // Generate a user ID when the component mounts
    setUserId(uuidv4())
  }, [])

  if (!userId) return null

  // Create the SelfApp configuration
  const selfApp = new SelfAppBuilder({
    appName: 'Mobarter',
    scope: 'telegram-mini-app',
    endpoint: `${rootUrl}/auth-self`,
    userId,
    // userId: evmAddress,
  }).build()

  return (
    <div className="w-full flex flex-col items-center justify-center">
      <div className="flex flex-col items-center justify-center text-center w-[85%]">
        <h1 className="font-semibold text-xl mb-3">Verify Your Identity</h1>
        <p className="font-light text-sm">Open the Self App and scan the QR code</p>
      </div>

      <div className="mt-4 mb-5">
        <SelfQRcodeWrapper
          selfApp={selfApp}
          onSuccess={() => {
            toast.success('Verification Successful')
            // Handle successful verification
            console.log('Verification successful!')
            // Redirect or update UI
          }}
          size={350}
        />
      </div>
    </div>
  )
}
