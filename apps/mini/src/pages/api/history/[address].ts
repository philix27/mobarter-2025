import axios from 'axios'
import type { NextApiRequest, NextApiResponse } from 'next'
import { isValidAddress } from 'src/lib/config/addresses'

import { ITransactions } from '@/src/lib/server'

export default async function handler(req: NextApiRequest, res: NextApiResponse<ITransactions>) {
  const { address } = req.query
  const add = address as string

  if (!isValidAddress(add)) {
    res.status(300)
    throw new Error('Invalid address')
  }

  if (req.method === 'GET') {
    // Process a POST request
    const response = await axios.get('https://explorer.celo.org/api', {
      params: {
        module: 'account',
        action: 'txlist',
        address: address,
        startblock: 0,
        endblock: 99999999,
        sort: 'desc',
      },
      headers: {
        Accept: '*/*',
      },
    })

    const d = response.data
    res.status(200).json(d)
  } else {
    res.status(404)
  }
}
