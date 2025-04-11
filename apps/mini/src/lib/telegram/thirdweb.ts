import { createThirdwebClient } from 'thirdweb'

const clientId = process.env.NEXT_PUBLIC_THIRDWEB_CLIENT_ID

if (!clientId) {
  throw new Error('No client ID provided')
}

export const twClient = createThirdwebClient({
  clientId: clientId,
})
