import { SelfBackendVerifier, getUserIdentifier } from '@selfxyz/core'
import { NextApiRequest, NextApiResponse } from 'next'

import { logger } from '@/src/lib/utils'

const rootUrl = process.env.NEXT_PUBLIC_ROOT_URL
export default async function handler(req: NextApiRequest, res: NextApiResponse) {
  logger.info('Self Auth Endpoint called:')
  if (req.method === 'POST') {
    try {
      const { proof, publicSignals } = req.body

      if (!proof || !publicSignals) {
        return res.status(400).json({ message: 'Proof and publicSignals are required' })
      }

      // Extract user ID from the proof
      const userId = await getUserIdentifier(publicSignals)
      logger.info('Extracted userId:', userId)

      // Initialize and configure the verifier
      const selfBackendVerifier = new SelfBackendVerifier(
        'telegram-mini-app',
        `${rootUrl}/auth-self`
      )

      // Verify the proof
      const result = await selfBackendVerifier.verify(proof, publicSignals)

      if (result.isValid) {
        // Return successful verification response
        return res.status(200).json({
          status: 'success',
          result: true,
          credentialSubject: result.credentialSubject,
        })
      } else {
        // Return failed verification response
        return res.status(500).json({
          status: 'error',
          result: false,
          message: 'Verification failed',
          details: result.isValidDetails,
        })
      }
    } catch (error) {
      logger.error('Error verifying proof:', error)
      return res.status(500).json({
        status: 'error',
        result: false,
        message: error instanceof Error ? error.message : 'Unknown error',
      })
    }
  } else {
    return res.status(405).json({ message: 'Method not allowed' })
  }
}
