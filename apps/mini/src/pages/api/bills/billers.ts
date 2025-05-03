import axios from 'axios'
import type { NextApiRequest, NextApiResponse } from 'next'

import { IOperators } from '@/src/lib/server'

export default async function handler(req: NextApiRequest, res: NextApiResponse<IOperators>) {
  const url = `https://utilities.reloadly.com/billers`
  const token = process.env.UTILITY_TOKEN
  if (req.method === 'GET') {
    const response = await axios.get(url, {
      params: {
        type: 'ELECTRICITY_BILL_PAYMENT',
        countryISOCode: 'NG',
      },
      headers: {
        'Content-Type': 'application/json',
        Accept: 'application/com.reloadly.topups-v1+json',
        Authorization: `Bearer ${token}`,
      },
    })

    const d = response.data
    res.status(200).json(d)
  } else {
    res.status(404)
  }
}
