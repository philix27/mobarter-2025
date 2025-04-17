import axios from 'axios'
import type { NextApiRequest, NextApiResponse } from 'next'
import { ITransactions } from 'src/features/history/transactions/type'

export default async function handler(req: NextApiRequest, res: NextApiResponse<ITransactions>) {
  if (req.method === 'GET') {
    // Process a POST request
    const response = await axios.get('https://explorer.celo.org/api', {
      params: {
        module: 'account',
        action: 'txlist',
        address: '0xc8B665D6fb92ddc395BA6CfBf451058053F475Ae',
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
