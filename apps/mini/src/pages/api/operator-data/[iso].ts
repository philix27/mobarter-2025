import axios from 'axios'
import type { NextApiRequest, NextApiResponse } from 'next'

import { IOperators } from '@/src/lib/server'

export default async function handler(req: NextApiRequest, res: NextApiResponse<IOperators>) {
  const { iso } = req.query
  const countryCode = iso as string
  const url = `https://topups.reloadly.com/operators/countries/${countryCode}`
  const token = process.env.TOPUP_TOKEN
  if (req.method === 'GET') {
    // Process a POST request
    const response = await axios.get(url, {
      params: {
        dataOnly: true,
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
