import { logger } from '@/src/lib/utils'
import axios from 'axios'
import type { NextApiRequest, NextApiResponse } from 'next'

export default async function handler(req: NextApiRequest, res: NextApiResponse) {
  const { account_number, bank_code } = req.query
  const acctNo = account_number as string
  const code = bank_code as string

  if (req.method === 'GET') {
    try {
      const response = await axios.get(
        `https://nubapi.com/api/verify?account_number=${acctNo}&bank_code=${code}`,
        {
          headers: {
            Authorization: `Bearer ${process.env.NUBAPI}`,
            'Content-Type': 'application/json',
          },
        }
      )

      res.status(200).json(response.data)
    } catch (error) {
      logger.error(error)
    }
  } else {
    res.status(404)
  }
}
